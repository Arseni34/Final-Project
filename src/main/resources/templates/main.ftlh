<#import "blocks/template.ftlh" as t>

<@t.template user>

<section id="main-content" class="container mt-4">
    <div class="row">
        <div class="col-md-6">
            <h2 class="text">Каталоги запчастей</h2>
            <div class="row">
                <div class="col-md-6">
                    <img src="/static/images/1.jpg" class="img-fluid" alt="Запчасти">
                </div>
                <div class="col-md-6">
                    <p>У нас вы можете найти запчасти для любого автомобиля по выгодным ценам. Мы работаем с проверенными поставщиками и гарантируем качество нашей продукции.</p>
                    <a href="/" class="btn btn-danger">Подробнее</a>
                </div>
            </div>
            <h2 class="text">Каталоги дисков</h2>
            <div class="row">
                <div class="col-md-6">
                    <img src="/static/images/2.jpg" class="img-fluid" alt="Диски">
                </div>
                <div class="col-md-6">
                    <p>У нас вы можете подобрать диски для своего автомобиля по любым параметрам. Мы предлагаем широкий выбор дисков разных размеров, форм и цветов.</p>
                    <a href="/?searchWord=Диски" class="btn btn-danger">Подробнее</a>
                </div>
            </div>
                <h2 class="text">Каталоги шин</h2>
                <div class="row">
                    <div class="col-md-6">
                        <img src="/static/images/3.png" class="img-fluid" alt="Шины">
                    </div>
                    <div class="col-md-6">
                        <p>У нас вы можете купить шины для любого сезона и типа дороги. Мы имеем в наличии шины от ведущих производителей и обеспечиваем быструю доставку.</p>
                        <a href="/?searchWord=Шины" class="btn btn-danger">Подробнее</a>
                    </div>
                </div>

        </div>
        <div class="col-md-6">
            <h2 class="text">Марки автомобилей</h2>
            <table class="table table-bordered">
                <tr>
                <tr>
                    <td><a href="/?searchWord=Audi">Audi</a></td>
                    <td><a href="/?searchWord=Bmw">BMW</a></td>
                </tr>
                <tr>
                    <td><a href="/?searchWord=Chrysler">Chrysler</a></td>
                    <td><a href="/?searchWord=Citroen">Citroen</a></td>
                </tr>
                <tr>
                    <td><a href="/?searchWord=Dacia">Dacia</a></td>
                    <td><a href="/?searchWord=Fiat">Fiat</a></td>
                </tr>
                <tr>
                    <td><a href="/?searchWord=Ford">Ford</a></td>
                    <td><a href="/?searchWord=Geely">Geely</a></td>
                </tr>
                <tr>
                    <td><a href="/?searchWord=Honda">Honda</a></td>
                    <td><a href="/?searchWord=Hyundai">Hyundai</a></td>
                </tr>
                <tr>
                    <td><a href=/?searchWord=Kia">Kia</a></td>
                    <td><a href="/?searchWord=Lada">Lada</a></td>
                </tr>
                <tr>
                    <td><a href="/?searchWord=Lexus">Lexus</a></td>
                    <td><a href="/?searchWord=Mazda">Mazda</a></td>
                </tr>
                <tr>
                    <td><a href="/?searchWord=Mercedes-Benz">Mercedes-Benz</a></td>
                    <td><a href="/?searchWord=Nissan">Nissan</a></td>
                </tr>
                <tr>
                    <td><a href="/?searchWord=Porsche">Porsche</a></td>
                    <td><a href="/?searchWord=Subaru">Subaru</a></td>
                </tr>
                <tr>
                    <td><a href="/?searchWord=Tesla">Tesla</a></td>
                    <td><a href="/?searchWord=Toyota">Toyota</a></td>
                </tr>
                <tr>
                    <td><a href="/?searchWord=Volkswagen">Volkswagen</a></td>
                    <td><a href="/?searchWord=Volvo">Volvo</a></td>
                </tr>



            </table>
        </div>

    </div>


</section>
</@t.template>
<footer class="bg-dark text-white text-center py-3">
    <p>&copy; 2023 Rust.by - Веб-сервис по продаже автозапчастей</p>
</footer>

<!-- Подключаем Bootstrap JS и зависимости -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
