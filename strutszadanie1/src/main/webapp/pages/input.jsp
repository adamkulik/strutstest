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
<div class="container">
<div class="jumbotron">
        <h2>
        
                <bean:message key="exercise01.formpage.title" />
 
 
        </h2>
</div>
</div>
<nav class="navbar navbar-inverse navbar-fixed-bottom" >
  <div class="container-fluid">
    <div class="navbar-header">
    </div>
    <div>
      <ul class="nav navbar-nav navbar-right" >
        <li><html:link page="/Language.do?method=english"><bean:message key="language.en" /></html:link></li>
        <li><html:link page="/Language.do?method=german"><bean:message key="language.pl" /></html:link></li>
        <li><html:link page="/Login.do"><bean:message key="login" /></html:link></li>
      	<li><html:link page="/Test.do"><bean:message key="mainpage" /></html:link></li>
      </ul>
    </div>
  </div>
</nav>
 
 
        
        
 
        <html:errors />
 
       

        <html:form action="/Input" method="POST">
 
 
 <div class="container-fluid">
  <div class="row">
    <div class="col-sm-4">
    </div>
    <div class="col-sm-4" style="background-color:#EEEEEE;">
                <bean:message key="prompt.customer.firstname" />:
                <html:text styleClass="form-control" styleId="name" property="name" size="16" maxlength="16" value="" />
                <BR />
                <bean:message key="prompt.customer.middlename" />:
                <html:text styleClass="form-control" styleId="middleName" property="middleName" size="16"
                        maxlength="16" value=""/>
                <BR />
                <bean:message key="prompt.customer.lastname" />:
                <html:text styleClass="form-control" styleId="lastName" property="lastName" size="16"
                        maxlength="16" value=""/>
                <BR />
                <P />
 
                <div>
 
                        <bean:message key="radio.name" />
                        :

                       <label class="radio-inline"> <html:radio styleId="male" property="sex" value="male" />

                        <bean:message key="radio.sex.male" />
 						</label>
                     <label class="radio-inline">   <html:radio styleId="female" property="sex" value="female" />
                        <bean:message key="radio.sex.female" />
                        </label>
 
                </div>
 
 
                <BR />
 
                <html:reset styleClass="btn btn-info btn-medium" value="Reset" />
 
        &nbsp;
       
                <html:submit styleClass="btn btn-info btn-medium" property="step" onclick="validateCode()">
                <bean:message key="button.submit" />
                </html:submit>
    </div>
   	<div class="col-sm-4"></div>
  </div>
</div>

 
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