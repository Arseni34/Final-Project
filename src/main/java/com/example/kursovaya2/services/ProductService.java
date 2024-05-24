package com.example.kursovaya2.services;

import com.example.kursovaya2.models.CartItem;
import com.example.kursovaya2.models.Image;
import com.example.kursovaya2.models.Product;
import com.example.kursovaya2.models.User;
import com.example.kursovaya2.repositories.CartItemRepository;
import com.example.kursovaya2.repositories.ProductRepository;
import com.example.kursovaya2.repositories.UserRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.security.Principal;
import java.util.List;
import java.util.Optional;

@Service
@Slf4j
@RequiredArgsConstructor
public class  ProductService {
    private final ProductRepository productRepository;
    private final UserRepository userRepository;
    private final CartItemRepository cartItemRepository;


    public List<Product> listProducts(String title) {
        if (title != null) return productRepository.findByTitleContainingIgnoreCase(title);
        return productRepository.findAll();
    }


    public void saveProduct(Principal principal, Product product, MultipartFile file1, MultipartFile file2, MultipartFile file3) throws IOException {
        product.setUser(getUserByPrincipal(principal));
        Image image1;
        Image image2;
        Image image3;
        if (file1.getSize() != 0) {
            image1 = toImageEntity(file1);
            image1.setPreviewImage(true);
            product.addImageToProduct(image1);
        }
        if (file2.getSize() != 0) {
            image2 = toImageEntity(file2);
            product.addImageToProduct(image2);
        }
        if (file3.getSize() != 0) {
            image3 = toImageEntity(file3);
            product.addImageToProduct(image3);
        }
        log.info("Saving new Product. Title: {}; Author email: {}", product.getTitle(), product.getUser().getEmail());
        Product productFromDb = productRepository.save(product);
        productFromDb.setPreviewImageId(productFromDb.getImages().get(0).getId());
        productRepository.save(product);
    }

    public User getUserByPrincipal(Principal principal) {
        if (principal == null) return new User();
        return userRepository.findByEmail(principal.getName());
    }

    private Image toImageEntity(MultipartFile file) throws IOException {
        Image image = new Image();
        image.setName(file.getName());
        image.setOriginalFileName(file.getOriginalFilename());
        image.setContentType(file.getContentType());
        image.setSize(file.getSize());
        image.setBytes(file.getBytes());
        return image;
    }

    public void deleteProduct(User user, Long id) {
        Product product = productRepository.findById(id)
                .orElse(null);
        if (product != null) {
            if (product.getUser().getId().equals(user.getId())) {
                productRepository.delete(product);
                log.info("Product with id = {} was deleted", id);
            } else {
                log.error("User: {} haven't this product with id = {}", user.getEmail(), id);
            }
        } else {
            log.error("Product with id = {} is not found", id);
        }
    }

    public void deleteProductFromCart(User user, Long id) {
        Optional<Product> product = productRepository.findById(id);

        CartItem cartItem = cartItemRepository.findByUserAndProduct(user, product.orElse(null));
        if (cartItem != null) {

                    cartItemRepository.delete(cartItem);

                log.info("Cart Item with id = {} was deleted", id);
            }
         else {
            log.error("Product with id = {} is not found", id);
        }
    }

    public int count (Long id) {
        int money = 0;
        List<CartItem> cartItems = cartItemRepository.findAll();

            for(CartItem cartItem : cartItems){
                money+=cartItem.getQuantity()*cartItem.getProduct().getPrice();
            }
            log.info("Cart Item with id = {} was deleted", id);
        return money;
    }

    public Product getProductById(Long id) {
        return productRepository.findById(id).orElse(null);
    }

    public void addToCart(Principal principal, Long productId, int quantity) {
        User user = getUserByPrincipal(principal);
        Product product = getProductById(productId);

        if (user != null && product != null) {
            CartItem existingCartItem = cartItemRepository.findByUserAndProduct(user, product);

            if (existingCartItem != null) {
                existingCartItem.setQuantity(existingCartItem.getQuantity() + quantity);
                cartItemRepository.save(existingCartItem);
            } else {
                CartItem cartItem = new CartItem(product, user, quantity);
                cartItemRepository.save(cartItem);
            }

            log.info("Product added to the cart. Product ID: {}; User email: {}", productId, user.getEmail());
        }

    }
}

