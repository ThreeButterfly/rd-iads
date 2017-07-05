<%@page language="java" pageEncoding="UTF-8" %>
<jsp:include page="../header/taglibs.jsp"/>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>UI</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <jsp:include page="../header/deLayout.jsp"/>

    <link href="<%=request.getContextPath()%>/static/css/login/styles.css" type="text/css" rel="stylesheet"/>
    <link href="<%=request.getContextPath()%>/static/css/styles.css" type="text/css" rel="stylesheet"/>
    <script src="<%=request.getContextPath()%>/static/js/login/login.js"></script>

</head>
<body>
<div id="base" class="">
    <div id="u4" class="ax_default" data-label="登录与注册">
        <div id="u4_state0" class="panel_state" data-label="登录">
            <div id="u4_state0_content" class="panel_state_content">

                <!-- Unnamed (矩形) -->
                <div id="u5" class="ax_default box_1">
                    <div id="u5_div" class=""></div>
                    <!-- Unnamed () -->
                    <div id="u6" class="text" style="display: none; visibility: hidden">
                        <p><span style="font-family:'应用字体 Regular', '应用字体';"></span></p>
                    </div>
                </div>

                <!-- Unnamed (矩形) -->
                <div id="u7" class="ax_default">
                    <div id="u7_div" class=""></div>
                    <!-- Unnamed () -->
                    <div id="u8" class="text" style="display: none; visibility: hidden">
                        <p><span style="font-family:'应用字体 Bold', '应用字体';"></span></p>
                    </div>
                </div>

                <!-- Unnamed (组合) -->
                <div id="u9" class="ax_default">

                    <!-- Unnamed (矩形) -->
                    <div id="u10" class="ax_default first-level-title">
                        <div id="u10_div" class=""></div>
                        <!-- Unnamed () -->
                        <div id="u11" class="text" style="display: none; visibility: hidden">
                            <p><span style="font-family:'应用字体 Bold', '应用字体';"></span></p>
                        </div>
                    </div>
                </div>

                <!-- Unnamed (矩形) -->
                <div id="u12" class="ax_default">
                    <div id="u12_div" class=""></div>
                    <!-- Unnamed () -->
                    <div id="u13" class="text" style="visibility: visible;">
                        <p><span style="font-family:'应用字体 Bold', '应用字体';">服务入口</span></p>
                    </div>
                </div>
                <div class="login-form">
                    <!-- 帐号 (文本框) -->
                    <div id="u14" class="ax_default _text" data-label="帐号">
                        <input type="text" class="form-control login-field" value="" placeholder="手机号或注册帐号"
                               id="login-name"/>
                        <label class="login-field-icon fui-user" for="login-name"></label>
                    </div>
                    <!-- 密码 (文本框) -->
                    <div id="u15" class="ax_default _text  form-group" data-label="密码">
                        <input type="password" class="form-control login-field" value="" placeholder="密码"
                               id="login-pass"/>
                        <label class="login-field-icon fui-lock" for="login-pass"></label>
                    </div>
                </div>
                <!-- Unnamed (矩形) -->
                <div id="u16" class="ax_default">
                    <div id="u16_div" class=""></div>
                    <!-- Unnamed () -->
                    <div id="u17" class="text" style="visibility: visible;">
                        <p><span style="font-family:'应用字体 Bold', '应用字体';">进入</span></p>
                    </div>
                </div>

                <!-- Unnamed (矩形) -->
                <div id="u18" class="ax_default">
                    <div id="u18_div" class=""></div>
                    <!-- Unnamed () -->
                    <div id="u19" class="text" style="display: none; visibility: hidden">
                        <p><span style="font-family:'应用字体 Regular', '应用字体';"></span></p>
                    </div>
                </div>


                <!-- Unnamed (组合) -->
                <div id="u20" class="ax_default" onclick="alert(1)">

                    <!-- Unnamed (矩形) -->
                    <div id="u21" class="ax_default">
                        <div id="u21_div" class=""></div>
                        <!-- Unnamed () -->
                        <div id="u22" class="text" style="display: none; visibility: hidden">
                            <p><span style="font-family:'应用字体 Regular', '应用字体';"></span></p>
                        </div>
                    </div>

                    <!-- Unnamed (图片) -->
                    <div id="u23" class="ax_default imghand">
                        <img id="u23_img" class="img " src="<%=request.getContextPath()%>/static/images/login/u23.png"/>
                        <!-- Unnamed () -->
                        <div id="u24" class="text" style="display: none; visibility: hidden">
                            <p><span style="font-family:'应用字体 Regular', '应用字体';"></span></p>
                        </div>
                    </div>

                    <!-- Unnamed (矩形) -->
                    <div id="u25" class="ax_default first-level-title">
                        <div id="u25_div" class=""></div>
                        <!-- Unnamed () -->
                        <div id="u26" class="text" style="visibility: visible;">
                            <p><span style="font-family:'应用字体 Bold', '应用字体';">注册登记</span></p>
                        </div>
                    </div>
                </div>

                <!-- Unnamed (矩形) -->
                <div id="u27" class="ax_default">
                    <div id="u27_div" class=""></div>
                    <!-- Unnamed () -->
                    <div id="u28" class="text" style="display: none; visibility: hidden">
                        <p><span style="font-family:'应用字体 Regular', '应用字体';"></span></p>
                    </div>
                </div>

                <!-- Unnamed (图片) -->
                <div id="u29" class="ax_default imghand">
                    <img id="u29_img" class="img " src="<%=request.getContextPath()%>/static/images/login/u29.png"/>
                    <!-- Unnamed () -->
                    <div id="u30" class="text" style="display: none; visibility: hidden">
                        <p><span style="font-family:'应用字体 Regular', '应用字体';"></span></p>
                    </div>
                </div>

                <!-- Unnamed (矩形) -->
                <div id="u31" class="ax_default first-level-title">
                    <div id="u31_div" class=""></div>
                    <!-- Unnamed () -->
                    <div id="u32" class="text" style="visibility: visible;">
                        <p><span style="font-family:'应用字体 Bold', '应用字体';">健康公告</span></p>
                    </div>
                </div>

                <!-- Unnamed (矩形) -->
                <div id="u33" class="ax_default">
                    <div id="u33_div" class=""></div>
                    <!-- Unnamed () -->
                    <div id="u34" class="text" style="display: none; visibility: hidden">
                        <p><span style="font-family:'应用字体 Regular', '应用字体';"></span></p>
                    </div>
                </div>

                <!-- Unnamed (组合) -->
                <a style="margin-top: 0" class="login-link" href="#">
                <div id="u35" class="ax_default">

                    <!-- Unnamed (矩形) -->
                    <div id="u36" class="ax_default">
                        <div id="u36_div" class=""></div>
                        <!-- Unnamed () -->
                        <div id="u37" class="text" style="display: none; visibility: hidden">
                            <p><span style="font-family:'应用字体 Regular', '应用字体';"></span></p>
                        </div>
                    </div>

                    <!-- Unnamed (矩形) -->
                    <div id="u38" class="ax_default first-level-title">
                        <div id="u38_div" class=""></div>
                        <!-- Unnamed () -->
                        <div id="u39" class="text" style="visibility: visible;">
                            <p><span style="font-family:'应用字体 Bold', '应用字体';">服务咨询</span></p>
                        </div>
                    </div>
                </div>
                </a>
                <!-- Unnamed (矩形) -->
                <div id="u40" class="ax_default first-level-title">
                    <div id="u40_div" class=""></div>
                    <!-- Unnamed () -->
                    <div id="u41" class="text" style="visibility: visible;">
                        <p><span style="font-family:'应用字体 Bold', '应用字体';">用户须知</span></p>
                    </div>
                </div>

                <!-- Unnamed (矩形) -->
                <div id="u42" class="ax_default first-level-title">
                    <div id="u42_div" class=""></div>
                    <!-- Unnamed () -->
                    <div id="u43" class="text" style="visibility: visible;">
                        <p><span style="font-family:'应用字体 Bold', '应用字体';">意见调查</span></p>
                    </div>
                </div>

                <!-- Unnamed (图片) -->
                <div id="u44" class="ax_default imghand">
                    <img id="u44_img" class="img " src="<%=request.getContextPath()%>/static/images/login/u44.png"/>
                    <!-- Unnamed () -->
                    <div id="u45" class="text" style="display: none; visibility: hidden">
                        <p><span style="font-family:'应用字体 Regular', '应用字体';"></span></p>
                    </div>
                </div>

                <!-- Unnamed (图片) -->
                <div id="u46" class="ax_default imghand">
                    <img id="u46_img" class="img " src="<%=request.getContextPath()%>/static/images/login/u46.png"/>
                    <!-- Unnamed () -->
                    <div id="u47" class="text" style="display: none; visibility: hidden">
                        <p><span style="font-family:'应用字体 Regular', '应用字体';"></span></p>
                    </div>
                </div>

                <!-- Unnamed (图片) -->
                <div id="u48" class="ax_default imghand">
                    <img id="u48_img" class="img " src="<%=request.getContextPath()%>/static/images/login/u48.png"/>
                    <!-- Unnamed () -->
                    <div id="u49" class="text" style="display: none; visibility: hidden">
                        <p><span style="font-family:'应用字体 Regular', '应用字体';"></span></p>
                    </div>
                </div>

                <!-- Unnamed (矩形) -->
                <div id="u50" class="ax_default ">

                    <a style="margin-top: 0" class="login-link" href="#">忘记密码?</a>

                </div>

                <!-- Unnamed (垂直线) -->
                <div id="u52" class="ax_default _垂直线">
                    <img id="u52_img" class="img " src="<%=request.getContextPath()%>/static/images/login/u52.png"/>
                    <!-- Unnamed () -->
                    <div id="u53" class="text" style="display: none; visibility: hidden">
                        <p><span style="font-family:'应用字体 Regular', '应用字体';"></span></p>
                    </div>
                </div>

                <!-- Unnamed (矩形) 注册登记-->
                <a style="margin-top: 0" class="login-link" href="#"  id="register">
                <div id="u54" class="ax_default">
                    <img id="u54_img" class="img " src="<%=request.getContextPath()%>/static/images/login/u54.png"/>
                    <!-- Unnamed () -->
                </div>
                </a>
                <!-- Unnamed (矩形) -->
                <div id="u56" class="ax_default label">
                    <div id="u56_div" class=""></div>
                    <!-- Unnamed () -->
                    <div id="u57" class="text" style="visibility: visible;">
                        <div style="font-size:28px;"><span
                                style="font-family:'应用字体 Regular', '应用字体';">内江市疾病预防控制中心公众服务平台</span></div>
                        <div style="font-size:28px;"><span style="font-family:'应用字体 Regular', '应用字体';font-size:13px;">NEI JIANG MUNICIPAL CENTER FOR</span><span
                                style="font-family:'应用字体 Regular', '应用字体';"> </span><span
                                style="font-family:'应用字体 Regular', '应用字体';font-size:13px;">DISEASE CONTROL AND PREVENTION</span>
                        </div>
                    </div>
                </div>

                <!-- Unnamed (图片) -->
                <div id="u58" class="ax_default imghand">
                    <img id="u58_img" class="img " src="<%=request.getContextPath()%>/static/images/login/u58.png"/>
                    <!-- Unnamed () -->
                    <div id="u59" class="text" style="display: none; visibility: hidden">
                        <p><span style="font-family:'应用字体 Regular', '应用字体';"></span></p>
                    </div>
                </div>
            </div>
        </div>

    </div>

<jsp:include page="../header/footer.jsp" />
</div>
</body>
</html>
