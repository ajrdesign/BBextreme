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
      
      strBody = "A new Revu 11 pre-release webinar sign up:" & VBCrLf
      strBody = strBody & VBCrLf
      strBody = strBody & "Presentation Title: " & pTitle & VBCrLf
      strBody = strBody & "Session Description: " & description & VBCrLf
      strBody = strBody & "List Three Key Learning Objectives: " & objectives & VBCrLf
      strBody = strBody & VBCrLf
      strBody = strBody & "Primary Speaker: " & fname & VBCrLf
      strBody = strBody & "Primary Company: " & fcompany & VBCrLf
      strBody = strBody & "Primary Title: " & ftitle & VBCrLf
      strBody = strBody & "Primary Bio: " & fbio & VBCrLf
      strBody = strBody & "Additional Speaker?: " & sspeaker & VBCrLf
      strBody = strBody & "Secondary Name: " & sname & VBCrLf
      strBody = strBody & "Secondary Title: " & stitle & VBCrLf
      strBody = strBody & "Secondary Bio: " & sbio & VBCrLf
      strBody = strBody & VBCrLf
      strBody = strBody & "Address: " & address & VBCrLf
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
      objMail.ReplyTo = "bringrevutoyou@bluebeam.com"
      objMail.To = "bringrevutoyou@bluebeam.com"
      objMail.Subject = "Call for Presentation: eXtreme Conference 2013"
      objMail.TextBody = strBody
      objMail.Send
  
      %>
            <% Else %>