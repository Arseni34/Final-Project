<#import "blocks/template.ftlh" as t>

<@t.template user>

<body>

<header class="text-light">
    <nav class="navbar navbar-expand-lg navbar-dark bg-danger">
        <div class="container-fluid">
            <a href="/" class="navbar-brand">Rust.by</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item"><a class="nav-link" href="#">Главная</a></li>
                    <li class="nav-item"><a class="nav-link" href="/autoparts">Запчасти</a></li>
                    <li class="nav-item"><a class="nav-link" href="/wheels">Диски</a></li>
                    <li class="nav-item"><a class="nav-link" href="/tires">Шины</a></li>
                    <li class="nav-item"><a class="nav-link" href="/user-account">Личный кабинет</a></li>
                    <li class="nav-item"><a class="nav-link" href="/order">Оформить заказ</a></li>
                </ul>
            </div>
        </div>
    </nav>
</header>

<section id="main-content" class="container mt-4">
    <div class="row">
        <div class="col-md-4">
        </div>

        <div class="col-md-4">
            <h1 style="text-align: center">Регистрация</h1>
            <hr>
            <form action="/registration" method="post">
                <div class="form-group">
                    <label for="name">Имя пользователя</label>
                    <input type="text" class="form-control" required id="name" name="name">
                </div>
                <div class="form-group">
                    <label for="email">Электронная почта</label>
                    <input type="email" class="form-control" id="email" required name="email">
                </div>
                <div class="form-group">
                    <label for="phoneNumber">Номер телефона</label>
                    <input type="text" class="form-control" id="phoneNumber" required name="phoneNumber">
                </div>
                <div class="form-group">
                    <label for="password">Пароль</label>
                    <input type="password" class="form-control" id="password" required name="password">
                </div>
                <input type="hidden" name="_csrf" value="${_csrf.token}">
                <button type="submit" style="width: 100%" class="btn btn-danger">Зарегистрироваться</button>
            </form>

        </div>
        <div class="col-md-4">
        </div>
    </div>
</section>

</body>
</html>
</@t.template>