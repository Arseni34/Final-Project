<#import "blocks/template.ftlh" as t>

<@t.template user>

<section id="main-content" class="container mt-4">
    <div class="row">



        <div class="col-md-4">
            <div id="myCarousel" class="carousel slide" data-ride="carousel">
                <div class="carousel-inner">
                    <#list images as image>
                        <div class="carousel-item <#if image.previewImage>active</#if>">
                            <img src="/images/${image.id}" class="d-block w-100" alt="Фото товара">
                        </div>
                    </#list>
                </div>
                <a class="carousel-control-prev" href="#myCarousel" role="button" data-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="sr-only">  </span>
                </a>
                <a class="carousel-control-next" href="#myCarousel" role="button" data-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="sr-only">  </span>
                </a>
            </div>
            <hr>
            <h1 style="text-align: center">${product.title}  </h1>
            <h1 style="text-align: center">${product.price} $</h1>

            <hr>
            <p style="text-align: center">

            </p>
            <div class="col-md-6">
            </div>
            <#if !user.isAdmin()>
            <div class="row">
                <div class="col-md-12">

                    <button type="button" class="btn btn-success" style="width: 100%" onclick="window.location.href='/product/${product.id}/toCart'">Добавить в корзину</button>
                </div>
            </div>
            </#if>
        </div>



        <div class="col-md-6">
            <h2 class="text ">Описание</h2>

            <h3 style="text-align: left">${product.description}</h3>
            <br>
            <h4 style="text-align: left">Страна производства: ${product.city}</h4>

        </div>

    </div>
        <div class="col-md-4">
        </div>
    </div>
</section>
</@t.template>