<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <title>eXtreme Conference Call for Presentations</title>
	<%
    
    submit = False
    error_msg = ""
    pTitle_error = ""
	sessiondescription_error = ""
	objectives_error = ""
    fname_error = ""
	fcompany_error = ""
    ftitle_error = ""
	fbio_error = ""
	sspeaker_error = ""
	
    email_error = ""
    
    cmd_submit = Request.Form("cmd_submit")
    
    If cmd_submit = "Submit" Then
      
      ptitle = Request.Form("ptitle")
      sessiondescription = Trim(Request.Form("sessiondescription"))
      objectives = Trim(Request.Form("objectives"))
      fname = Request.Form("fname")
      fcompany = Request.Form("fcompany")
      ftitle = Request.Form("ftitle")
      fbio = Trim(Request.Form("fbio"))
	  sspeaker = Request.Form("sspeaker")
	  sname = Request.Form("sname")
	  stitle = Request.Form("stitle")
	  sbio = Trim(Request.Form("sbio"))
	  
      address = Request.Form("address")
	  address2 = Request.Form("address2")
	  city = Request.Form("city")
	  usstate = Request.Form("usstate")
	  pcode = Request.Form("pcode")
	  country = Request.Form("country")
	  wphone = Request.Form("wphone")
	  mphone = Request.Form("mphone")
	  email = Request.Form("email")
    
      If ptitle = "" Then ptitle_error = "ptitle"
      If sessiondescription = "" Then sessiondescription_error = "sessiondescription"
      If objectives = "" Then objectives_error = "objectives"
	  If fname = "" Then fname_error = "fname"
      If fcompany = "" Then fcompany_error = "fcompany"
      If ftitle = "" Then ftitle_error = "ftitle"
      If fbio = "" Then fbio_error = "fbio"
      If sspeaker = "" Then sspeaker_error = "sspeaker"
      If email = "" Then email_error = "email"
	  
	  If ptitle = "" Then error_msg = "ptitle"
      If sessiondescription = "" Then error_msg = "sessiondescription"
      If objectives = "" Then error_msg = "objectives"
	  If fname = "" Then error_msg = "fname"
      If fcompany = "" Then error_msg = "fcompany"
      If ftitle = "" Then error_msg = "ftitle"
      If fbio = "" Then error_msg = "fbio"
      If sspeaker = "" Then error_msg = "sspeaker"
      If email = "" Then error_msg = "email"
    
      If error_msg = "" Then
      
        submit = True
    
      End If
    
    End If
    
    %>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="">
  <meta name="author" content="">

  <script src="//ajax.googleapis.com/ajax/libs/mootools/1.2.5/mootools-yui-compressed.js"></script>
  <script src="http://www.bluebeam.com/us/includes/js/mootools-1.2.5.1-more.js" type="text/javascript"></script>
  <script src="http://www.bluebeam.com/us/includes/js/smoothbox.js" type="text/javascript"></script>

  <!-- Le styles -->
  <link href="/css/bootstrap.css" rel="stylesheet">
  <link href="/css/app.css" rel="stylesheet">
  <link href="/css/responsive.css" rel="stylesheet">
  <link rel="stylesheet" href="http://www.bluebeam.com/us/includes/css/smoothbox.css" type="text/css" media="screen" />

  <script language="JavaScript" type="text/javascript">
		function validate(regform){
			
			if (regform.agree.checked == false)
			{
				alert("Please fill the required fields and check the agreement.")
				return false
			}
		}

		function speakerEnable(){
		  var x = document.getElementById('sSpeakers').selectedIndex;
		  var selection = document.getElementById('sSpeakers').options[x].text;
		  
		  if (selection == "Yes"){
			
			document.getElementById('sSpeakerName').disabled = false;
				document.getElementById('sSpeakerTitle').disabled = false;
				document.getElementById('sSpeakerBio').disabled = false;
		  
		  }
		  
		  else{
		  
			document.getElementById('sSpeakerName').disabled = true;
				document.getElementById('sSpeakerTitle').disabled = true;
				document.getElementById('sSpeakerBio').disabled = true;
			
		  }
		
		}
	
	</script>

  <!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
      <![endif]-->
    </head>

    <body>
      <div class="container">
        <div class="row">
          <div class="span8 offset2">

            <img src="/img/call-for-presentation-header.jpg">
            <h1 class="center">Call for Presentations</h1>
            <h3 class="center green">Deadline: March 15, 2013</h4>
            <img width="50%" class="pull-right pull-right-img" src="/img/extreme-presentation-audience.jpg">
            <p>Show off your Revu skills at our 3rd Annual Bluebeam eXtreme Conference, taking place August 2nd in Los Angeles, California.</p>
            <p>The Bluebeam eXtreme Conference is the place for Revu users to be seen and heard. This action-packed event, co-located with the Summer X Games, provides users from across the country with an exclusive opportunity to learn new Revu techniques directly from Bluebeam's leading engineers and experts, mingle with Bluebeam's top executives, and swap tips and tricks with fellow Revu power users.</p>
            <p>Do you want to take center stage to showcase how your project teams are pushing the limits of project communication and collaboration? Well, we would love to hear from you! Submit a speaking proposal using the following application to briefly describe how your organization has used Revu to develop innovative processes to work without limits.</p>
            <p><strong>Important Notes:</strong></p>
            <em><p>All proposals will be reviewed by a panel of judges consisting of Bluebeam representatives. Selected presenters will be notified by phone and email the week of March 18th.</p>
            <p>If you have questions about the submission or review system, please contact Bluebeam at <a href="mailto:extremeproposals@bluebeam.com">extremeproposals@bluebeam.com</a>.</p></em>
            <% If submit Then %>
            <script>
              window.onload=function(){TB_show("", "thank-you.asp?keepThis=true&TB_iframe=true&height=110&width=325", null);}
            </script>
            <%
        
			  sendUrl = "http://schemas.microsoft.com/cdo/configuration/sendusing"
			  smtpUrl = "http://schemas.microsoft.com/cdo/configuration/smtpserver"
			  
			  Set objConfig = CreateObject("CDO.Configuration")
			  objConfig.Fields.Item(sendUrl) = 2 ' cdoSendUsingPort
			  objConfig.Fields.Item(smtpUrl) = "relay-hosting.secureserver.net"
			  objConfig.Fields.Update
			  
			  Dim strBody
			  
			  strBody = "A response to eXtreme Conference call for presentations:" & VBCrLf
			  strBody = strBody & VBCrLf
			  strBody = strBody & "Presentation Title: " & ptitle & VBCrLf
			  strBody = strBody & "Session Description:" & VBCrLf
			  strBody = strBody & sessiondescription & VBCrLf
			  strBody = strBody & "List Three Key Learning Objectives:" & VBCrLf
			  strBody = strBody & objectives & VBCrLf
			  strBody = strBody & VBCrLf
			  strBody = strBody & "Primary Speaker: " & fname & VBCrLf
			  strBody = strBody & "Primary Company: " & fcompany & VBCrLf
			  strBody = strBody & "Primary Title: " & ftitle & VBCrLf
			  strBody = strBody & "Primary Bio:" & VBCrLf
			  strBody = strBody & fbio & VBCrLf
			  strBody = strBody & VBCrLf
			  strBody = strBody & "Additional Speaker?: " & sspeaker & VBCrLf
			  strBody = strBody & "Secondary Name: " & sname & VBCrLf
			  strBody = strBody & "Secondary Title: " & stitle & VBCrLf
			  strBody = strBody & "Secondary Bio:" & VBCrLf
			  strBody = strBody & sbio & VBCrLf
			  strBody = strBody & VBCrLf
			  strBody = strBody & "Address: " & address & address2 & VBCrLf
			  strBody = strBody & "City: " & city & VBCrLf
			  strBody = strBody & "State: " & state & VBCrLf
			  strBody = strBody & "Postal Code: " & pcode & VBCrLf
			  strBody = strBody & "Country: " & country & VBCrLf
			  strBody = strBody & "Work Phone: " & wphone & VBCrLf
			  strBody = strBody & "Mobile Phone: " & mphone & VBCrLf
			  strBody = strBody & "Email: " & email & VBCrLf
			  
			  Set objMail = CreateObject("CDO.Message")
			  Set objMail.Configuration = objConfig
			  
			  objMail.From = "webform@revu11.com"
			  objMail.ReplyTo = "extremeproposals@bluebeam.com"
			  objMail.To = "extremeproposals@bluebeam.com"
			  objMail.Subject = "Call for Presentation: eXtreme Conference 2013"
			  objMail.TextBody = strBody
			  objMail.Send
		  
			%>
            <% Else %>
            <form action="" method="post" onSubmit="return validate(this)" name="regform">
              <legend>Application</legend>
              <label>Presentation Title: * </label>
              <input type="text" name="ptitle" value="<%= ptitle %>" class="input-xxlarge" style="<% If ptitle_error = "ptitle" Then Response.Write "background-color:#F00; color:#FFF" Else Response.Write"background-color:#FFF"%>">
              <label>Session Description (250 words or less): * </label>
              <textarea type="text" name="sessiondescription" rows="6" class="input-block-level" style="<% If sessiondescription_error = "sessiondescription" Then Response.Write "background-color:#F00; color:#FFF" Else Response.Write"background-color:#FFF"%>"><%= sessiondescription %></textarea>
              <label>List Three Key Learning Objectives (100 words or less):*</label>
              <textarea type="text" name="objectives" rows="3" class="input-block-level" style="<% If objectives_error = "objectives" Then Response.Write "background-color:#F00; color:#FFF" Else Response.Write"background-color:#FFF"%>"><%= objectives %></textarea>

              <legend>About the Speaker</legend>
              <label>Name: * </label>
              <input type="text" name="fname" value="<%= fname %>" class="input-xlarge" style="<% If fname_error = "fname" Then Response.Write "background-color:#F00; color:#FFF" Else Response.Write"background-color:#FFF"%>">
              <div class="row">
                <div class="span4">
                  <label>Company: * </label>
                  <input type="text" name="fcompany" class="input-block-level" value="<%= fcompany %>" style="<% If fcompany_error = "fcompany" Then Response.Write "background-color:#F00; color:#FFF" Else Response.Write"background-color:#FFF"%>">
                </div>
                <div class="span4">
                  <label>Title: * </label>
                  <input type="text" name="ftitle" class="input-block-level" value="<%= ftitle %>" style="<% If ftitle_error = "ftitle" Then Response.Write "background-color:#F00; color:#FFF" Else Response.Write"background-color:#FFF"%>">
                </div>
              </div>
              <label>Bio: * </label>
              <textarea type="text" name="fbio" rows="4" class="input-block-level" value="<%= fbio %>" style="<% If fbio_error = "fbio" Then Response.Write "background-color:#F00; color:#FFF" Else Response.Write"background-color:#FFF"%>"></textarea>
              
              <label>Will your presentation include any additional Speakers? * </label>
              <select name="sspeaker" id="sSpeakers" onchange="speakerEnable()" class="controls" value="<%= sspeaker %>" style="<% If sspeaker_error = "sspeaker" Then Response.Write "background-color:#F00; color:#FFF" Else Response.Write"background-color:#FFF"%>">
                  <option value="No">No</option>
                  <option value="Yes">Yes</option>
              </select>
              <label>Name</label>
              <input type="text" name="sname" value="<%= sname %>" disabled="true" id="sSpeakerName" class="input-xlarge controls">
              </input>
              <label>Title</label>
              <input type="text" name="stitle" value="<%= stitle %>" disabled="true" id="sSpeakerTitle" class="input-xlarge controls">
              </input>
              <label>Bio</label>
              <textarea type="text" name="sbio" value="<%= sbio %>" disabled="true" id="sSpeakerBio" class="input-block-level controls">
              </textarea>

              <legend>Contact info</legend>
              <div class="form-horizontal">
                <div class="control-group">
                  <label class="control-label" for="inputAddress">Street Address</label>
                  <div class="controls">
                    <input class="input-xlarge" name="address" value="<%= address %>" type="text" id="inputAddress" placeholder="Street Address">
                  </div>
                  <div class="controls">
                    <input class="input-xlarge" name="address2" value="<%= address2 %>" type="text" id="inputAddress">
                  </div>
                </div>
                <div class="control-group">
                  <label class="control-label" for="inputCity">City</label>
                  <div class="controls">
                    <input class="input-small" type="text" value="<%= city %>" id="inputCity" name="city">
                  </div>
                </div>
                <div class="control-group">
                  <label class="control-label" for="inputState">State</label>
                  <div class="controls">
                    <select type="text" id="inputState" name="usstate">
                      <option value="Please select" selected="selected">Please select</option>
                      <option value="AL">AL</option>
                      <option value="AK">AK</option>
                      <option value="AZ">AZ</option>
                      <option value="AR">AR</option>
                      <option value="CA">CA</option>
                      <option value="CO">CO</option>
                      <option value="CT">CT</option>
                      <option value="DC">DC</option>
                      <option value="DE">DE</option>
                      <option value="FL">FL</option>
                      <option value="GA">GA</option>
                      <option value="HI">HI</option>
                      <option value="ID">ID</option>
                      <option value="IL">IL</option>
                      <option value="IN">IN</option>
                      <option value="IA">IA</option>
                      <option value="KS">KS</option>
                      <option value="KY">KY</option>
                      <option value="LA">LA</option>
                      <option value="ME">ME</option>
                      <option value="MD">MD</option>
                      <option value="MA">MA</option>
                      <option value="MI">MI</option>
                      <option value="MN">MN</option>
                      <option value="MS">MS</option>
                      <option value="MO">MO</option>
                      <option value="MT">MT</option>
                      <option value="NE">NE</option>
                      <option value="NV">NV</option>
                      <option value="NH">NH</option>
                      <option value="NJ">NJ</option>
                      <option value="NM">NM</option>
                      <option value="NY">NY</option>
                      <option value="NC">NC</option>
                      <option value="ND">ND</option>
                      <option value="OH">OH</option>
                      <option value="OK">OK</option>
                      <option value="OR">OR</option>
                      <option value="PA">PA</option>
                      <option value="RI">RI</option>
                      <option value="SC">SC</option>
                      <option value="SD">SD</option>
                      <option value="TN">TN</option>
                      <option value="TX">TX</option>
                      <option value="UT">UT</option>
                      <option value="VT">VT</option>
                      <option value="VA">VA</option>
                      <option value="WA">WA</option>
                      <option value="WV">WV</option>
                      <option value="WI">WI</option>
                      <option value="WY">WY</option>
                    </select>
                  </div>
                </div>
                <div class="control-group">
                  <label class="control-label" for="inputZip">Zip/Postal Code:</label>
                  <div class="controls">
                    <input type="text" id="inputZip" name="pcode"  value="<%= pcode %>">
                  </div>
                </div>
                <div class="control-group">
                  <label class="control-label" for="inputCountry">Country</label>
                  <div class="controls">
                    <select type="text" id="inputCountry" name="country">
                      <option value="Please select">Please select</option>
                      <option value="United States">United States</option>
                      <option value="Argentina">Argentina</option>
                      <option value="Australia">Australia</option>
                      <option value="Austria">Austria</option>
                      <option value="Belgium">Belgium</option>
                      <option value="Bermuda">Bermuda</option>
                      <option value="Bulgaria">Bulgaria</option>
                      <option value="Brazil">Brazil</option>
                      <option value="Canada">Canada</option>
                      <option value="China">China</option>
                      <option value="Colombia">Colombia</option>
                      <option value="Costa Rica">Costa Rica</option>
                      <option value="Cyprus">Cyprus</option>
                      <option value="Czech Republic">Czech Republic</option>
                      <option value="Denmark">Denmark</option>
                      <option value="Dominican Republic">Dominican Republic</option>
                      <option value="Egypt">Egypt</option>
                      <option value="Finland">Finland</option>
                      <option value="France">France</option>
                      <option value="Germany">Germany</option>
                      <option value="Greece">Greece</option>
                      <option value="Guam">Guam</option>
                      <option value="Hong Kong">Hong Kong</option>
                      <option value="Hungary">Hungary</option>
                      <option value="Iceland">Iceland</option>
                      <option value="India">India</option>
                      <option value="Indonesia">Indonesia</option>
                      <option value="Ireland">Ireland</option>
                      <option value="Italy">Italy</option>
                      <option value="Jamaica">Jamaica</option>
                      <option value="Japan">Japan</option>
                      <option value="Korea, Republic of">Korea, Republic of</option>
                      <option value="Malaysia">Malaysia</option>
                      <option value="Mexico">Mexico</option>
                      <option value="Netherlands">Netherlands</option>
                      <option value="New Zealand">New Zealand</option>
                      <option value="Nigeria">Nigeria</option>
                      <option value="Norway">Norway</option>
                      <option value="Pakistan">Pakistan</option>
                      <option value="Panama">Panama</option>
                      <option value="Philippines">Philippines</option>
                      <option value="Poland">Poland</option>
                      <option value="Portugal">Portugal</option>
                      <option value="Puerto Rico">Puerto Rico</option>
                      <option value="Qatar">Qatar</option>
                      <option value="Romania">Romania</option>
                      <option value="Russia">Russia</option>
                      <option value="Saudi Arabia">Saudi Arabia</option>
                      <option value="Singapore">Singapore</option>
                      <option value="Slovak Republic">Slovak Republic</option>
                      <option value="South Africa">South Africa</option>
                      <option value="Spain">Spain</option>
                      <option value="Sweden">Sweden</option>
                      <option value="Switzerland">Switzerland</option>
                      <option value="Taiwan">Taiwan</option>
                      <option value="Thailand">Thailand</option>
                      <option value="Turkey">Turkey</option>
                      <option value="United Arab Emirates">United Arab Emirates</option>
                      <option value="United Kingdom">United Kingdom</option>
                      <option value="Venezuela">Venezuela</option>
                      <option value="Vietnam">Vietnam</option>
                      <option value="Other">Other</option>
                    </select>
                  </div>
                </div>
                <div class="control-group">
                  <label class="control-label" for="inputWorkPhone">Work Phone * </label>
                  <div class="controls">
                    <input type="text" id="inputWorkPhone" name="wphone" value="<%= wphone %>">
                  </div>
                </div>
                <div class="control-group">
                  <label class="control-label" for="inputMobilePhone" name="mphone">Mobile Phone</label>
                  <div class="controls">
                    <input type="text" id="inputMobilePhone" name="mphone" value="<%= mphone %>">
                  </div>
                </div>
                <div class="control-group">
                  <label class="control-label" for="inputEmail">Email *</label>
                  <div class="controls">
                    <input type="text" id="inputEmail" name="email" value="<%= email %>" style="<% If email_error = "email" Then Response.Write "background-color:#F00; color:#FFF" Else Response.Write"background-color:#FFF"%>">
                  </div>
                </div>
                
              </div>
              <label class="checkbox">
                <input type="checkbox" name="agree"> By submitting this proposal, I confirm that I am authorized to present this topic at the Bluebeam eXtreme Conference, and have already received any approvals required by my employer. I also give Bluebeam Software permission to use my name, company name, logo and speaking session title on materials used to promote the Bluebeam eXtreme Conference.)
              </label>
              <p>* Required field.</p>
              <input value="Submit" type="submit" class="btn btn-green btn-large" name="cmd_submit">
              &nbsp;&nbsp;<% If Not error_msg = "" Then Response.Write "<font color=red>Please complete all required fields.</font>" Else Response.Write""%>
            </form>
            <% End If %>
            <hr>
            <footer>
              <p>Copyright © 2002 - 2013 Bluebeam Software, Inc. All rights reserved.</p>
            </footer>
          </div>
        </div>

        

        

      </div> <!-- /container -->

    <!-- Le javascript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    

  </body>
  </html>
