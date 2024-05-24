<#import "blocks/template.ftlh" as t>

<@t.template user>

<section id="main-content" class="container mt-4">
    <div class="row">

        <h2 class="text-center">Корзина</h2>


            </div>
            <div class="row">
                <#list userProducts as cartItem>
                    <div class="col-md-4">
                        <a href="/product/${cartItem.product.id}" class="product-link">
                            <div class="card text-white bg-dark my-3 product">
                                <div class="card-top">
                                    <form action="cart/product/delete/${cartItem.product.id}" method="post">
                                        <input type="hidden" name="_csrf" value="${_csrf.token}"/>
                                        <button type="submit" class="btn btn-danger m-3">
                                            Удалить
                                        </button>
                                    </form>
                                </div>
                                <img src="/images/${cartItem.product.previewImageId}"
                                     class="card-img-top">
                                <div class="card-body">
                                    <div class="row">
                                        <div class="col-md-8">

                                    <h5 class="card-title">${cartItem.product.title}</h5>
                                    <p class="card-text">${cartItem.product.price} $</p>
                                        </div>
                                        <div class="col-md-4">

                                        <h6 class="card-quantity">${cartItem.quantity} в корзине</h6>
                                        </div>
                                    </div>
                                </div>

                            </div>

                        </a>
                    </div>
                <#else>
                    <h3 class="card-title">Корзина пуста...</h3>
                </#list>

            </div>

    </div>

    <div class="row">
        <div class="col-md-1">
        </div>
        <div class="col-md-8">

        </div>
        <#if !user.isAdmin()>
        <div class="col-md-2">
            <h4 class="final">Итого: ${totalMoney} $</h4>

            <button type="button" class="btn btn-success" style="width: 100%" onclick="window.location.href='/order'">Оформить заказ</button>
        </div>
        </#if>
        <div class="col-md-1">
        </div>
    </div>


</section>
</@t.template>