Imports System.Data.SqlClient
Imports System.Data.SqlClient.SqlException

Public Class Employee
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub BtnSave_Click(sender As Object, e As EventArgs) Handles BtnSave.Click
        Dim con As New SqlConnection
        Dim cmd As New SqlCommand

        con.ConnectionString = "data source=.; database=ASPVBNET; integrated security=SSPI"
        con.Open()
        cmd = New SqlCommand("insert into Asp_TblEmployee values('" & txtEmpName.Text & "','" & txtEmpGender.Text & "','" & txtEmpMobileNo.Text & "','" & txtEmpEmailId.Text & "','" & txtEmpAddress.Text & "')", con)
        If (txtEmpName.Text = "" Or txtEmpGender.Text = "" Or txtEmpMobileNo.Text = "" Or txtEmpEmailId.Text = "" Or txtEmpAddress.Text = "") Then
            MsgBox("please enter the feild")
        Else
            cmd.ExecuteNonQuery()
            con.Close()
            MsgBox("data stored successfully", MsgBoxStyle.Information)
        End If
    End Sub

    Protected Sub btnUpdate_Click(sender As Object, e As EventArgs) Handles btnUpdate.Click
        Dim con As New SqlConnection
        Dim cmd As New SqlCommand
        con.ConnectionString = "data source=.; database=ASPVBNET; integrated security=SSPI"
        cmd.Connection = con
        con.Open()
        cmd.CommandText = "update Asp_TblEmployee set  EmpName ='" & txtEmpName.Text & "',EmpGender='" & txtEmpGender.Text & "',EmpMobileNo='" & txtEmpMobileNo.Text & "',EmpEmailId='" & txtEmpEmailId.Text & "',EmpAddress='" & txtEmpAddress.Text & "' where EmpId='" & txtEmpId.Text & "'"
        cmd.ExecuteNonQuery()
        MsgBox("Record Successfully Updated", MsgBoxStyle.Information, "Data Saved successfully")
        txtEmpId.Text = ""
        txtEmpName.Text = ""
        txtEmpGender.Text = ""
        txtEmpMobileNo.Text = ""
        txtEmpEmailId.Text = ""
        txtEmpAddress.Text = ""

    End Sub


    Protected Sub btnDelete_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim con As New SqlConnection
        Dim cmd As New SqlCommand
        con.ConnectionString = "data source=.; database=ASPVBNET; integrated security=SSPI"
        cmd.Connection = con
        con.Open()
        cmd.CommandText = "delete from Asp_TblEmployee where EmpId='" & txtEmpId.Text & "'"
        cmd.ExecuteNonQuery()
        MsgBox("Record Deleted Successfully")


    End Sub
End Class