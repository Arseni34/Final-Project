<#import "blocks/template.ftlh" as t>

<@t.template user>

    <form method="get" action="/">

        <div class="form-row">
<#--            <div class="form-group col-md-2">-->
<#--               <label for="searchCity">Страна</label>-->
<#--                <input type="text" name="searchCity" <#if searchCity??>value="${searchCity}"</#if> class="form-control"-->
<#--                       id="searchCity">-->
<#--                <select id="searchCity" class="form-control">-->
<#--                    <option value="">Страна</option>-->
<#--                    <option value="Япония">Япония</option>-->
<#--                  <option value="Германия">Германия</option>-->
<#--                    <option value="Китай">Китай</option>-->
<#--                </select>-->
<#--            </div>-->
            <div class="form-group col-md-10">
                <label for="searchWord">Поиск по товарам</label>
                <input type="text" name="searchWord" <#if searchWord??>value="${searchWord}"</#if> class="form-control"
                       id="searchWord">
            </div>

            <button style="width: 15%" type="submit" class="btn btn-danger mt-1 ">Поиск</button>
        </div>
    </form>
    <hr>
    <div class="row">
        <#list products as product>
            <div class="col-md-4">
                <a href="/product/${product.id}" class = "product-link">
                    <div class="card text-white bg-dark my-3 product">

                        <img src="/images/${product.previewImageId}"
                             class="card-img-top">
                        <div class="card-body">
                            <h5 class="card-title">${product.title}</h5>
                            <p class="card-text">${product.price} $</p>
                        </div>
                        <div class="card-footer">
                            ${product.city}
                        </div>
                    </div>
                </a>
            </div>
        <#else>
            <h1 style="text-align: center">Не найдено</h1>
        </#list>
    </div>
</@t.template>