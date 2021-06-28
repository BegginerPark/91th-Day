<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
 <meta charset="UTF-8">
 <title>클래스와 메소드 사용(class.jsp)</title>
</head>
<body>
 <b>클래스와 메소드(은행 계좌관리)</b><Br> 

 <%!
  // 계좌 클래스 정의
  class Account {
     String account_no = null;       // 계좌번호
     int balance = 0;                // 잔액
     
     // 생성자
     Account(String account_no) {
        this.account_no = account_no;
     }
     
     // 예금 메소드
     int deposit(int amount) {
        balance += amount;
        return balance;
     }
     
     // 출금 메소드
     int payment(int amount) {
    	 
        if (balance >= amount) {
        	balance -= amount;
        	return balance;
        } else {
        	return balance;
        }
     }
     
 }
 %>
 
 <%
  int deposit_don = 0;     // 입금액
  int payment_don = 0;     // 출금액
  int balance = 0;         // 잔액

  // 객체 생성
  Account account = new Account("11-01-0011");
  out.print("계좌번호 : " + account.account_no + "<Br>");
  out.print("잔액 : " + account.balance + "<p>");
  
  deposit_don = 5000;
  account.deposit(deposit_don);
  out.print(deposit_don + " 입금 후 잔액 : " + account.balance + "<p>");
  
  payment_don = 3000;
  balance = account.payment(payment_don);
  out.print(payment_don + " 출금 후 잔액 : " + account.balance + "<p>");
  
  payment_don = 3000;  
  balance = account.payment(3000);
  
  if (balance < payment_don) {
     out.print(payment_don + " 출금 후 잔액 : " + account.balance + "<Br>");
	 out.print("잔액 부족으로 출금할 수 없습니다 !!<p>");     
  }
 %>
  
</body>
</html>