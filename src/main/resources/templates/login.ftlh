<#import "blocks/template.ftlh" as t>

<@t.template user>

<body>

<section id="main-content" class="container mt-4">
    <div class="row">
        <div class="col-md-4">

        </div>
        <div class="col-md-4">
            <h1 style="text-align: center">Авторизация</h1>
            <hr>
            <form action="/login" method="post">
                <div class="form-group">
                    <label for="email">Электронная почта</label>
                    <input type="email" class="form-control" id="email" name="username">
                </div>
                <div class="form-group">
                    <label for="password">Пароль</label>
                    <input type="password" class="form-control" id="password" name="password">
                </div>
                <input type="hidden" name="_csrf" value="${_csrf.token}">
                <button type="submit" style="width: 100%" class="btn btn-danger">Войти</button>
            </form>
            <hr>
            <h5>Нет аккаунта Rust.by? <a href="/registration" class="text-danger">Зарегистрироваться</a></h5>
        </div>
    </div>
    <div class="col-md-4">
    </div>
    </div>
</section>

</body>
</html>
</@t.template>