﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
      <style>
        label {
  position: relative;
}

.inline-label {
  padding: 20px;
}

/* style that just styles the input */
.form-control {
  border-top-right-radius: 0;
  border-bottom-right-radius: 0;
  border-bottom-left-radius: 3px;
  border-top-left-radius: 3px;
/*  just adds the inset shadow  */
  background-clip: padding-box;
  border-width: 1px;
/*  default styles for the input  */
  display: block;
  border-radius: 0;
  -webkit-box-shadow: inset 0 1px 1px rgba(0,0,0,0.075);
  transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
  width: 100%;
  height: 3.438em;
  padding: 24px 20px 8px;
  border: solid #ccc;
}

.form-control ~ .form-control-label {
  -webkit-transition: all 0.5s ease;
  -moz-transition: all 0.5s ease;
  -o-transition: all 0.5s ease;
  -ms-transition: all 0.5s ease;
  transition: all 0.5s ease;
  -webkit-transform-origin: 0%;
  -moz-transform-origin: 0%;
  -ms-transform-origin: 0%;
  transform-origin: 0%;
  position: absolute;
  color: #777;
  cursor: text; 
  left: 22px;
  top: 1.65em;
  pointer-events: none;
  white-space: nowrap;
  max-width: 100%;
  text-overflow: ellipsis;
  overflow: hidden;
  padding-right: 22px;
}

.form-control:focus ~ .form-control-label {
  color: #008374;
      will-change: all;
    -webkit-transition: all 0.2s ease;
    -moz-transition: all 0.2s ease;
    -o-transition: all 0.2s ease;
    -ms-transition: all 0.2s ease;
    transition: all 0.2s ease;
    -webkit-transform: scale(0.7);
    -ms-transform: scale(0.7);
    transform: scale(0.7, );
    -webkit-transform: scale(0.7);
    -moz-transform: scale(0.7);
    -o-transform: scale(0.7);
    -ms-transform: scale(0.7);
    transform: scale(0.7);
    top: .5em;
    max-width: 130%;
}

label {
  display: inline-block;
  margin-bottom: 5px;
}
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
  <input type="text" class="form-control inline-label">
<label class="form-control-label">I'm a Label</label>
</div>
            <div>
  <input type="text" class="form-control inline-label">
<label class="form-control-label">I'm a Label</label>
</div>
            <div>
  <input type="text" class="form-control inline-label">
<label class="form-control-label">I'm a Label</label>
</div>
            <div>
  <input type="text" class="form-control inline-label">
<label class="form-control-label">I'm a Label</label>
</div>
            <div>
  <input type="text" class="form-control inline-label">
<label class="form-control-label">I'm a Label</label>
</div>
            <div>
  <input type="text" class="form-control inline-label">
<label class="form-control-label">I'm a Label</label>
</div>
    </form>
</body>
</html>
