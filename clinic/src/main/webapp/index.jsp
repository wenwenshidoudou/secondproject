<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="description" content="clinic registration system">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0">
    <title>门诊挂号</title>

    <!-- Page styles -->
    <link rel="stylesheet" href="./vendor/mdl/material.min.css">
    <link rel="stylesheet" href="styles.css">
<title>Insert title here</title>
</head>
<body>
 <div class="demo-layout-transparent mdl-layout mdl-js-layout mdl-layout--fixed-header">
        <header class="mdl-layout__header">
            <div class="mdl-layout__header-row">
                <span class="mdl-layout-title">门诊挂号系统</span>
                <div class="mdl-layout-spacer"></div>
                <!-- Right aligned menu below button -->
                <button class="mdl-button mdl-js-button mdl-button--icon mdl-js-ripple-effect" id="icon">
                    <img class="mdl-chip__contact" src="images/Icon_header.jpg"/>
                </button>
                <ul class="mdl-menu mdl-list mdl-js-menu mdl-menu--bottom-right mdl-js-ripple-effect" for="icon">
                    <li class="mdl-list__item mdl-list__item--two-line">
                        <span class="mdl-list__item-primary-content">
                            <img class="mdl-chip__contact" src="images/Icon_header.jpg"/>
                            <span>蓝胖子</span>
                            <span class="mdl-list__item-sub-title">Luke@skywalker.com</span>
                        </span>
                    </li>
                    <li class="list__item--border-top"></li>
                    <li class="mdl-menu__item mdl-list__item">
                        <span class="mdl-list__item-primary-content">
                            <i class="material-icons mdl-list__item-icon">perm_contact_calendar</i>
                            待办事项
                        </span>
                    </li>
                    <li class="mdl-menu__item mdl-list__item">
                        <span class="mdl-list__item-primary-content">
                            <i class="material-icons mdl-list__item-icon">settings</i>
                            设置
                        </span>
                    </li>
                    <li class="mdl-menu__item mdl-list__item">
                        <span class="mdl-list__item-primary-content">
                            <i class="material-icons mdl-list__item-icon">exit_to_app</i>
                            退出系统
                        </span>
                    </li>
                </ul>
            </div>
        </header>

        <div class="mdl-layout__drawer">
            <span class="mdl-layout-title mdl-color--primary mdl-color-text--white">门诊挂号系统</span>
            <nav class="mdl-navigation mdl-list">
                <span class="mdl-typography--title mdl-color--primary mdl-color-text--white">挂号管理</span>
                <a class="mdl-navigation__link" href="">
                    <span class="mdl-list__item-primary-content">
                        <i class="material-icons mdl-list__item-icon">person</i>
                        挂号收费
                    </span>
                </a>
                <span class="mdl-typography--title mdl-color--primary mdl-color-text--white">统计分析</span>
                <a class="mdl-navigation__link" href="">
                    <span class="mdl-list__item-primary-content">
                        <i class="material-icons mdl-list__item-icon">search</i>
                        挂号查询
                    </span>
                </a>
                <span class="mdl-typography--title mdl-color--primary mdl-color-text--white">系统设置</span>
                <a class="mdl-navigation__link" href="">
                    <span class="mdl-list__item-primary-content">
                        <i class="material-icons mdl-list__item-icon">settings</i>
                        挂号科室维护
                    </span>
                </a>
                <a class="mdl-navigation__link" href="Regis_office.jsp">
                    <span class="mdl-list__item-primary-content">
                        <i class="material-icons mdl-list__item-icon">settings</i>
                        科室排班维护
                    </span>
                </a>
                <a class="mdl-navigation__link" href="">
                    <span class="mdl-list__item-primary-content">
                        <i class="material-icons mdl-list__item-icon">settings</i>
                        医生排班维护
                    </span>
                </a>
            </nav>
        </div>

        <div class="mdl-layout__content">
            <div class="demo-card-wide mdl-card mdl-shadow--2dp">
                <div class="mdl-card__title">
                    <h2 class="mdl-card__title-text">挂号科室</h2>
                </div>
                <div class="mdl-card__supporting-text">
                    <table class="mdl-data-table mdl-js-data-table mdl-data-table--selectable">
                        <thead>
                            <tr>
                                <th class="mdl-data-table__cell--non-numeric">编号</th>
                                <th class="mdl-data-table__cell--non-numeric ">科室代码</th>
                                <th class="mdl-data-table__cell--non-numeric ">科室名称</th>
                                <th class="mdl-data-table__cell--non-numeric">地址</th>
                                <th class="mdl-data-table__cell--non-numeric">上级科室</th>
                                <th class="mdl-data-table__cell--non-numeric ">科室类型</th>
                                <th class="mdl-data-table__cell--non-numeric">联系电话</th>
                                <th class="mdl-data-table__cell--non-numeric">邮箱</th>
                                <th class="mdl-data-table__cell--non-numeric">拼音助记</th>
                                <th class="mdl-data-table__cell--non-numeric">状态</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td class="mdl-data-table__cell--non-numeric">John Lennon</td>
                                <td class="mdl-data-table__cell--non-numeric">The smart one</td>
                                <td class="mdl-data-table__cell--non-numeric">No</td>
                                <td class="mdl-data-table__cell--non-numeric">John Lennon</td>
                                <td class="mdl-data-table__cell--non-numeric">The smart one</td>
                                <td class="mdl-data-table__cell--non-numeric">No</td>
                                <td class="mdl-data-table__cell--non-numeric">No</td>
                                <td class="mdl-data-table__cell--non-numeric">John Lennon</td>
                                <td class="mdl-data-table__cell--non-numeric">The smart one</td>
                                <td class="mdl-data-table__cell--non-numeric">No</td>
                            </tr>
                            <tr>
                                <td class="mdl-data-table__cell--non-numeric">John Lennon</td>
                                <td class="mdl-data-table__cell--non-numeric">The smart one</td>
                                <td class="mdl-data-table__cell--non-numeric">No</td>
                                <td class="mdl-data-table__cell--non-numeric">John Lennon</td>
                                <td class="mdl-data-table__cell--non-numeric">The smart one</td>
                                <td class="mdl-data-table__cell--non-numeric">No</td>
                                <td class="mdl-data-table__cell--non-numeric">No</td>
                                <td class="mdl-data-table__cell--non-numeric">John Lennon</td>
                                <td class="mdl-data-table__cell--non-numeric">The smart one</td>
                                <td class="mdl-data-table__cell--non-numeric">No</td>
                            </tr>
                            <tr>
                                <td class="mdl-data-table__cell--non-numeric">John Lennon</td>
                                <td class="mdl-data-table__cell--non-numeric">The smart one</td>
                                <td class="mdl-data-table__cell--non-numeric">No</td>
                                <td class="mdl-data-table__cell--non-numeric">John Lennon</td>
                                <td class="mdl-data-table__cell--non-numeric">The smart one</td>
                                <td class="mdl-data-table__cell--non-numeric">No</td>
                                <td class="mdl-data-table__cell--non-numeric">No</td>
                                <td class="mdl-data-table__cell--non-numeric">John Lennon</td>
                                <td class="mdl-data-table__cell--non-numeric">The smart one</td>
                                <td class="mdl-data-table__cell--non-numeric">No</td>
                            </tr>
                            <tr>
                                <td class="mdl-data-table__cell--non-numeric">John Lennon</td>
                                <td class="mdl-data-table__cell--non-numeric">The smart one</td>
                                <td class="mdl-data-table__cell--non-numeric">No</td>
                                <td class="mdl-data-table__cell--non-numeric">John Lennon</td>
                                <td class="mdl-data-table__cell--non-numeric">The smart one</td>
                                <td class="mdl-data-table__cell--non-numeric">No</td>
                                <td class="mdl-data-table__cell--non-numeric">No</td>
                                <td class="mdl-data-table__cell--non-numeric">John Lennon</td>
                                <td class="mdl-data-table__cell--non-numeric">The smart one</td>
                                <td class="mdl-data-table__cell--non-numeric">No</td>
                            </tr>
                            <tr>
                                <td class="mdl-data-table__cell--non-numeric">John Lennon</td>
                                <td class="mdl-data-table__cell--non-numeric">The smart one</td>
                                <td class="mdl-data-table__cell--non-numeric">No</td>
                                <td class="mdl-data-table__cell--non-numeric">John Lennon</td>
                                <td class="mdl-data-table__cell--non-numeric">The smart one</td>
                                <td class="mdl-data-table__cell--non-numeric">No</td>
                                <td class="mdl-data-table__cell--non-numeric">No</td>
                                <td class="mdl-data-table__cell--non-numeric">John Lennon</td>
                                <td class="mdl-data-table__cell--non-numeric">The smart one</td>
                                <td class="mdl-data-table__cell--non-numeric">No</td>
                            </tr>
                            <tr>
                                <td class="mdl-data-table__cell--non-numeric">John Lennon</td>
                                <td class="mdl-data-table__cell--non-numeric">The smart one</td>
                                <td class="mdl-data-table__cell--non-numeric">No</td>
                                <td class="mdl-data-table__cell--non-numeric">John Lennon</td>
                                <td class="mdl-data-table__cell--non-numeric">The smart one</td>
                                <td class="mdl-data-table__cell--non-numeric">No</td>
                                <td class="mdl-data-table__cell--non-numeric">No</td>
                                <td class="mdl-data-table__cell--non-numeric">John Lennon</td>
                                <td class="mdl-data-table__cell--non-numeric">The smart one</td>
                                <td class="mdl-data-table__cell--non-numeric">No</td>
                            </tr>
                            <tr>
                                <td class="mdl-data-table__cell--non-numeric">John Lennon</td>
                                <td class="mdl-data-table__cell--non-numeric">The smart one</td>
                                <td class="mdl-data-table__cell--non-numeric">No</td>
                                <td class="mdl-data-table__cell--non-numeric">John Lennon</td>
                                <td class="mdl-data-table__cell--non-numeric">The smart one</td>
                                <td class="mdl-data-table__cell--non-numeric">No</td>
                                <td class="mdl-data-table__cell--non-numeric">No</td>
                                <td class="mdl-data-table__cell--non-numeric">John Lennon</td>
                                <td class="mdl-data-table__cell--non-numeric">The smart one</td>
                                <td class="mdl-data-table__cell--non-numeric">No</td>
                            </tr>
                            <tr>
                                <td class="mdl-data-table__cell--non-numeric">John Lennon</td>
                                <td class="mdl-data-table__cell--non-numeric">The smart one</td>
                                <td class="mdl-data-table__cell--non-numeric">No</td>
                                <td class="mdl-data-table__cell--non-numeric">John Lennon</td>
                                <td class="mdl-data-table__cell--non-numeric">The smart one</td>
                                <td class="mdl-data-table__cell--non-numeric">No</td>
                                <td class="mdl-data-table__cell--non-numeric">No</td>
                                <td class="mdl-data-table__cell--non-numeric">John Lennon</td>
                                <td class="mdl-data-table__cell--non-numeric">The smart one</td>
                                <td class="mdl-data-table__cell--non-numeric">No</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <div class="mdl-card__actions mdl-card--border">
                    <button class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect mdl-button--accent">
                        删除已选记录
                    </button>
                </div>
                <div class="mdl-card__menu">
                    <button id="show-form"
                            class="mdl-button mdl-js-button mdl-button--fab mdl-js-ripple-effect mdl-button--colored">
                        <i class="material-icons">add</i>
                    </button>
                </div>
            </div>

        </div>
    </div>
    <dialog class="demo-dialog mdl-dialog">
        <div class="mdl-dialog__content">
            <form action="http://www.baidu.com">
                <div class="form__article">
                    <h4>新增挂号科室</h4>
                    <div class="mdl-grid">
                        <div class="mdl-cell mdl-cell--6-col mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                            <input class="mdl-textfield__input" type="text" id="OFFICECODE"/>
                            <label class="mdl-textfield__label" for="OFFICECODE">科室代码</label>
                        </div>
                        <div class="mdl-cell mdl-cell--6-col mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                            <input class="mdl-textfield__input" type="text" id="OFFICENAME"/>
                            <label class="mdl-textfield__label" for="OFFICENAME">科室名称</label>
                        </div>
                    </div>
                    <div class="mdl-grid">
                        <div class="mdl-cell mdl-cell--12-col mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                            <input class="mdl-textfield__input" type="text" id="ADDRESS">
                            <label class="mdl-textfield__label" for="ADDRESS">地址</label>
                        </div>
                    </div>
                    <div class="mdl-grid">
                        <div class="mdl-cell mdl-cell--6-col mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                            <input class="mdl-textfield__input" type="text" id="PARENTID">
                            <label class="mdl-textfield__label" for="PARENTID">上级科室</label>
                        </div>
                        <div class="mdl-cell mdl-cell--6-col mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                            <input class="mdl-textfield__input" type="text" id="ORGANIZTYPE">
                            <label class="mdl-textfield__label" for="ORGANIZTYPE">科室类型</label>
                            <ul class="mdl-menu mdl-menu--bottom-left mdl-js-menu dark_dropdown" for="ORGANIZTYPE">
                                <li class="mdl-menu__item">Male</li>
                                <li class="mdl-menu__item">Female</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </form>
        </div>
        <div class="mdl-dialog__actions">
            <input type="submit"
                   class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect mdl-button--primary"
                   value="保存">
            <button type="button"
                    class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect mdl-button--accent close">取消
            </button>
        </div>
    </dialog>
    <script>
        var dialog = document.querySelector('dialog');
        var showDialogButton = document.querySelector('#show-form');
        if (!dialog.showModal) {
            dialogPolyfill.registerDialog(dialog);
        }
        showDialogButton.addEventListener('click', function () {
            dialog.showModal();
        });
        dialog.querySelector('.close').addEventListener('click', function () {
            dialog.close();
        });
    </script>
    <script src="./vendor/mdl/material.js"></script>
</body>
</html>