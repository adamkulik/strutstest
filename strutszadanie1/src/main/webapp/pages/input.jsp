<%@ page contentType="text/html;charset=UTF-8" language="java"%>
 
<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="html"%>
<%@ taglib uri="/WEB-INF/struts-bean.tld" prefix="bean"%>
 
<html:html xhtml="true">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
 
<head>
<title></title>
<html:base />
</head>
 
<div align="center">
<div class="jumbotron">
        <h2>
        
                <bean:message key="exercise01.formpage.title" />
 
 
        </h2>
</div>
 
 
        <html:link page="/Language.do?method=english">English</html:link>
        <html:link page="/Language.do?method=german">Polski</html:link>
 
        <html:errors />
 
       

        <html:form action="/Input" method="POST">
 
                <bean:message key="prompt.customer.firstname" />:
                <html:text styleId="name" property="name" size="16" maxlength="16" value="" />
                <BR />
                <bean:message key="prompt.customer.middlename" />:
                <html:text styleId="middleName" property="middleName" size="16"
                        maxlength="16" value=""/>
                <BR />
                <bean:message key="prompt.customer.lastname" />:
                <html:text styleId="lastName" property="lastName" size="16"
                        maxlength="16" value=""/>
                <BR />
                <P />
 
                <div>
 
                        <bean:message key="radio.name" />
                        :
 
                        <html:radio styleId="male" property="sex" value="male" />
                        <bean:message key="radio.sex.male" />
 
                        <html:radio styleId="female" property="sex" value="female" />
                        <bean:message key="radio.sex.female" />
 
                </div>
 
 
                <BR />
 
                <html:reset value="Reset" />
 
        &nbsp;
       
                <html:submit property="step" onclick="validateCode()" />
 
                <!-- <html:cancel>
 
        </html:cancel> -->
 
        </html:form>
       
        <SCRIPT type="text/javascript">
        
        
        

                function validateStrings(param) {
                        var element = document.getElementById(param).value;
 
                        if (element == null || element.length === 0) {
                                window.alert(param + ' cannot be empty');
                                return false;
                        }
                        if (/[^a-zA-Z]/.test(element)) {
                                window.alert(param + ' is not alphanumeric');
                                return false;
                        }
                        return true;
                }
 
                function validateMiddleName(param) {
                        var element = document.getElementById(param).value;
 
                        if (/[^a-zA-Z]/.test(element)) {
                                window.alert(param + ' is not alphanumeric');
                                return false;
                        }
                        return true;
                }
 
                function checkbox() {
                        var clicked = 0;
                        if (document.getElementById("female").checked)
                                clicked = 1;
                        if (document.getElementById("male").checked)
                                clicked = 1;
                        if (clicked == 0)
                                window.alert('please specify yout gender');
               
                }
 
                function validateCode() {
                        validateStrings("name");
                        validateStrings("lastName");
                        validateMiddleName("middleName");
                        checkbox();
 
                }
 
        </SCRIPT>
</div>
</body>
 
</html:html>