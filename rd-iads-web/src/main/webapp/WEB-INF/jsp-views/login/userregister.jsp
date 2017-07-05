<jsp:include page="../header/taglibs.jsp"/>
<%@page language="java" pageEncoding="UTF-8" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
    <title>Get Shit Done Bootstrap Wizard by Creative Tim</title>

    <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport'/>
    <meta name="viewport" content="width=device-width"/>
    <jsp:include page="../header/deLayout.jsp"/>
    <jsp:include page="../header/wizardLayout.jsp"/>


</head>

<body>
<section class="wrap">
    <div class="content">
        <!--   Big container   -->
        <div class="container ax_default">
            <div class="row">
                <div class="col-sm-8 col-sm-offset-2">
                    <!--      Wizard container        -->
                    <div class="wizard-container">

                        <div class="form-inline">
                            <div class="form-group"><label>用户类型：</label></div>
                            <div class="form-group  ">
                                <label class="radio">
                                    <input type="radio" data-toggle="radio" name="optionsRadios" id="optionsRadios2"
                                           value="option1" data-radiocheck-toggle="radio" checked="">
                                    个人用户
                                </label>
                            </div>
                            <div class="form-group ">
                                <label class="radio">
                                    <input type="radio" data-toggle="radio" name="optionsRadios" id="optionsRadios1"
                                           value="option1" data-radiocheck-toggle="radio" required>
                                    企业用户
                                </label>
                            </div>
                        </div>
                        <div class="card wizard-card" data-color="orange" id="wizardProfile">
                            <!-- wizard container -->
                            <div id="app">
                                <div>
                                    <form-wizard @on-complete="onComplete"
                                                 title="用户注册"
                                                 subtitle=""
                                                 color="#3498db" back-button-text="上一步"
                                                 next-button-text="下一步"
                                                 finish-button-text="完成">
                                        <tab-content title="用户设置"
                                                     icon="fui-user" :before-change="beforeTabSwitch">
                                            <div class="form-horizontal">
                                                <div class="form-group ">
                                                    <label for="inputEmail1"
                                                           class="col-lg-2 control-label col-sm-offset-1">用户名：</label>
                                                    <div class="col-lg-6">
                                                        <input type="text" name="firstname" class="form-control"
                                                               id="inputPassword1" placeholder="请输入用户名">
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label for="inputPassword1"
                                                           class="col-lg-2 control-label col-sm-offset-1">手机号码</label>
                                                    <div class="col-lg-6">
                                                        <input type="text" class="form-control" id="inputPassword"
                                                               placeholder="请输入你的手机号码...">
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label for="inputPassword1"
                                                           class="col-lg-2 control-label col-sm-offset-1">验证码</label>
                                                    <div class="col-lg-4">
                                                        <input type="text" class="form-control" id="inputPassword1"
                                                               placeholder="请输入验证码...">
                                                    </div>
                                                    <div class="col-lg-2">

                                                        <img id="randCode" border="0" onclick="chageCode()"
                                                             style="cursor: hand;"
                                                             src="<%=request.getContextPath()%>/captcha/img"
                                                             name="randCode" alt="验证码" width="110px" height="38px"/>
                                                        <label style="cursor: hand;"><a
                                                                onclick="chageCode()">看不清?换一张</a></label>
                                                    </div>
                                                </div>
                                            </div>

                                        </tab-content>
                                        <tab-content title="完善信息"
                                                     icon="ti-settings">
                                            My second tab content
                                        </tab-content>
                                        <tab-content title="注册成功"
                                                     icon="ti-check">
                                            Yuhuuu! This seems pretty damn simple
                                        </tab-content>
                                    </form-wizard>
                                </div>
                            </div>
                        </div>
                    </div>
                </div><!-- end row -->
            </div> <!--  big container -->

        </div>
    </div>
</section>

<script>
    Vue.use(VueFormWizard);
    new Vue({
        el: '#app',
        methods: {
            onComplete: function () {
                alert('Yay. Done!');
            },
            beforeTabSwitch: function () {
alert(1)
                validatorform();
                return true;
            }
        }, mounted:function(){

        }
    });


    $(document).ready(function () {
        validatorform();
        // chageCode()
    });
    function chageCode() {
        $('#randCode').attr('src', '<%=request.getContextPath()%>/captcha/img?random=' + Math.random());
    }

    function validatorform () {
        var $validator = $('.wizard-card form').validate({
            rules: {
                firstname: {
                    required: true,
                    minlength: 3
                },
                lastname: {
                    required: true,
                    minlength: 3
                },
                email: {
                    required: true,
                    minlength: 3,
                }
            },
            messages: {
                firstname: "请输入您的名字",
                lastname: "请输入您的姓氏"
            }
        });

    }
</script>
</body>


</html>
