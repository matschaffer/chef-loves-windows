<script runat="server">
Sub submit(Source As Object, e As EventArgs)
  button1.Text="Hello world!"
End Sub
</script>
<!DOCTYPE html>
<html>
  <head>
    <title>Hello world button</title>
  </head>
  <body>
    <form runat="server">
      <asp:Button id="button1" Text="Click Me!" runat="server" OnClick="submit" />
    </form>
  </body>
</html>