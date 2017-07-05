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
    <jsp:include page="../header/deLayout_jq.jsp"/>
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
                            <div class="form-group" ><label>用户类型：</label></div>
                            <div class="form-group  ">
                                <label class="radio">
                                    <input type="radio" data-toggle="radio" name="optionsRadios" id="optionsRadios2" value="option1" data-radiocheck-toggle="radio" checked="">
                                   个人用户
                                </label>
                            </div>
                            <div class="form-group ">
                                <label class="radio">
                                    <input type="radio" data-toggle="radio" name="optionsRadios" id="optionsRadios1" value="option1" data-radiocheck-toggle="radio" required>
                                   企业用户
                                </label>
                            </div>
                        </div>
                        <div class="card wizard-card" data-color="orange" id="wizardProfile">
                            <form action="" method="">
                                <!--        You can switch ' data-color="orange" '  with one of the next bright colors: "blue", "green", "orange", "red"          -->

                                <div class="wizard-header">

                                    <h3>
                                        <b>用户注册</b> <br>
                                        <small>User registration</small>
                                    </h3>
                                </div>

                                <div class="wizard-navigation">
                                    <ul>
                                        <li><a href="#regist_step_1" data-toggle="tab">设置用户名</a></li>
                                        <li><a href="#regist_step_2" data-toggle="tab">填写帐号信息</a></li>
                                        <li><a href="#regist_step_3" data-toggle="tab">注册成功</a></li>
                                    </ul>

                                </div>

                                <div class="tab-content">
                                    <div class="tab-pane" id="regist_step_1">

                                        <div class="form-horizontal" >
                                            <div class="form-group ">
                                                <label for="inputEmail1" class="col-lg-2 control-label col-sm-offset-1">用户名：</label>
                                                <div class="col-lg-6">
                                                    <input type="text" name="firstname" class="form-control" id="inputPassword1" placeholder="请输入用户名">
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label for="inputPassword1" class="col-lg-2 control-label col-sm-offset-1">手机号码</label>
                                                <div class="col-lg-6">
                                                    <input type="text" class="form-control" id="inputPassword" placeholder="请输入你的手机号码...">
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label for="inputPassword1" class="col-lg-2 control-label col-sm-offset-1">验证码</label>
                                                <div class="col-lg-4">
                                                    <input type="text" class="form-control" id="inputPassword1" placeholder="请输入验证码...">
                                                </div>
                                                <div class="col-lg-2" >

                                                    <img id="randCode" border="0" onclick="chageCode()"  style="cursor: hand;" src="<%=request.getContextPath()%>/captcha/img" name="randCode"  alt="验证码"  width="110px" height="38px"/>
                                                    <label  style="cursor: hand;"><a onclick="chageCode()">看不清?换一张</a></label>
                                                </div>
                                            </div>
                                        </div>


                                    </div>
                                    <div class="tab-pane" id="regist_step_2">
                                        <h4 class="info-text"> What are you doing? (checkboxes) </h4>
                                        <div class="row">

                                            <div class="col-sm-10 col-sm-offset-1">
                                                <div class="col-sm-4">
                                                    <div class="choice" data-toggle="wizard-checkbox">
                                                        <input type="checkbox" name="jobb" value="Design">
                                                        <div class="icon">
                                                            <i class="fa fa-pencil"></i>
                                                        </div>
                                                        <h6>Design</h6>
                                                    </div>
                                                </div>
                                                <div class="col-sm-4">
                                                    <div class="choice" data-toggle="wizard-checkbox">
                                                        <input type="checkbox" name="jobb" value="Code">
                                                        <div class="icon">
                                                            <i class="fa fa-terminal"></i>
                                                        </div>
                                                        <h6>Code</h6>
                                                    </div>

                                                </div>
                                                <div class="col-sm-4">
                                                    <div class="choice" data-toggle="wizard-checkbox">
                                                        <input type="checkbox" name="jobb" value="Develop">
                                                        <div class="icon">
                                                            <i class="fa fa-laptop"></i>
                                                        </div>
                                                        <h6>Develop</h6>
                                                    </div>

                                                </div>
                                            </div>

                                        </div>
                                    </div>
                                    <div class="tab-pane" id="regist_step_3">
                                        <div class="row">
                                            <div class="col-sm-12">
                                                <h4 class="info-text"> Are you living in a nice area? </h4>
                                            </div>
                                            <div class="col-sm-7 col-sm-offset-1">
                                                <div class="form-group">
                                                    <label>Street Name</label>
                                                    <input type="text" class="form-control" placeholder="5h Avenue">
                                                </div>
                                            </div>
                                            <div class="col-sm-3">
                                                <div class="form-group">
                                                    <label>Street Number</label>
                                                    <input type="text" class="form-control" placeholder="242">
                                                </div>
                                            </div>
                                            <div class="col-sm-5 col-sm-offset-1">
                                                <div class="form-group">
                                                    <label>City</label>
                                                    <input type="text" class="form-control" placeholder="New York...">
                                                </div>
                                            </div>
                                            <div class="col-sm-5">
                                                <div class="form-group">
                                                    <label>Country</label><br>
                                                    <select name="country" class="form-control">
                                                        <option value="Afghanistan"> Afghanistan</option>
                                                        <option value="Albania"> Albania</option>
                                                        <option value="Algeria"> Algeria</option>
                                                        <option value="American Samoa"> American Samoa</option>
                                                        <option value="Andorra"> Andorra</option>
                                                        <option value="Angola"> Angola</option>
                                                        <option value="Anguilla"> Anguilla</option>
                                                        <option value="Antarctica"> Antarctica</option>
                                                        <option value="...">...</option>
                                                    </select>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="wizard-footer height-wizard">
                                    <div class="pull-right">
                                        <input type='button' class='btn btn-next btn-fill btn-warning btn-wd btn-sm'
                                               name='next' value='Next'/>
                                        <input type='button' class='btn btn-finish btn-fill btn-warning btn-wd btn-sm'
                                               name='finish' value='Finish'/>

                                    </div>

                                    <div class="pull-left">
                                        <input type='button' class='btn btn-previous btn-fill btn-default btn-wd btn-sm'
                                               name='previous' value='Previous'/>
                                    </div>
                                    <div class="clearfix"></div>
                                </div>

                            </form>
                        </div>
                    </div> <!-- wizard container -->
                </div>
            </div><!-- end row -->
        </div> <!--  big container -->

    </div>
    <footer>

    </footer>
</section>

<script>
    $(document).ready(function() {
       // chageCode()
    });
    function chageCode(){
        $('#randCode').attr('src','<%=request.getContextPath()%>/captcha/img?random='+Math.random());
    }
</script>
</body>


</html>
