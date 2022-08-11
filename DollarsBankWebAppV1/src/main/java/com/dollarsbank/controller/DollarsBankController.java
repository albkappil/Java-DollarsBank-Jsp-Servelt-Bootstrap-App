package com.dollarsbank.controller;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;

import com.dollarsbank.exceptions.IncorrectCredentialException;
import com.dollarsbank.model.Account;
import com.dollarsbank.model.Customer;
import com.dollarsbank.model.SavingsAccount;
import com.dollarsbank.utility.FileStorage;

public class DollarsBankController {

	private AtomicInteger ID_GENERATOR = new AtomicInteger(1);
	
	FileStorage fs = new FileStorage();
	
	private List<Account> accountList = new ArrayList<Account>();
	
	//ColorUtility
	
	public void loadAccounts() {
		
		this.accountList = fs.retriveObjAcc();
		//System.out.println(accountList.size());
		if(!accountList.isEmpty())
			ID_GENERATOR.set(accountList.size() + 1);
		//System.out.println("ID-GEN: " + ID_GENERATOR.get() );
		viewAccList();
	}
	
	public void saveAccounts() {
		viewAccList();
		fs.storeObjAcc(accountList);
	}
	
	
	
	public Account getAccountInfo(String name, String address, String phoneNumber,
			String username, String password, double initialDeposit) {
		Customer newCustomer = new Customer(name, address, phoneNumber);
		Account newAccount = new Account(ID_GENERATOR.getAndIncrement(),username, password, initialDeposit, newCustomer );
		AtomicInteger ID_SA = newAccount.getID_GENERATOR_SA();
		SavingsAccount newSavings = new SavingsAccount(ID_SA.getAndIncrement(),0.02,initialDeposit);
		addTransaction(newAccount.getUserId(),newSavings,"Initial Deposit Amount");
		
		newAccount.getSAList().add(newSavings);
		accountList.add(newAccount);
		saveAccounts();
		return accountList.get(0);
		
	}
	

	public Account verifiyCred(String username, String password) throws IncorrectCredentialException{
		loadAccounts();
		for (int i = 0; i < accountList.size(); i++) {
			Account a = accountList.get(i);
			if(username.equals(a.getUsername() ) ) {
				if(password.equals(a.getPassword())) {
					System.out.println("THIS IS THE USERNAME: " + a.getUsername());
					return a;
					}
			}
		}
		throw new IncorrectCredentialException("INVAILD CREDENTIALS. TRY AGAIN");
		//return null;
		
	}
	
	
	
	
	
	private void addTransaction(int userID, SavingsAccount savings, String type) {
		
		String formatDateTime = getTimeValue();
		
		String transaction = type + " in account [ID:" + userID +"].\n"
				+ "Balance - $" + savings.getBalance() + " as on " + formatDateTime;
		savings.getTransaction().add(transaction);
		saveAccounts();
	}
	
	
	public String getTimeValue() {
		
		LocalDateTime dateTime = LocalDateTime.now();
		DateTimeFormatter formatter = DateTimeFormatter.ofPattern(" EEE LLL dd yyyy HH:mm:ss");

	    String formatDateTime = dateTime.format(formatter) + " - UTC-06:00";
		 
	    return formatDateTime;
	}
	
	
	
	


	public void deposit(int depositSAid, double depAmount, int accID, boolean isTransfer) {
		SavingsAccount depoInS = getSavingsAcc(accID,depositSAid);
		depoInS.setBalance(depoInS.getBalance() + depAmount);
		
		String type =  " ";
		if(isTransfer) {
			type = "Deposit Amount for Transfer of $";
		}
		else
			type = "Deposit Amount of $";
		
		addTransaction(accID, depoInS, type + depAmount);
		saveAccounts();
	}
	
	public void withdraw(int withdrawSAid, double withdrawAmount, int accID, boolean isTransfer) {
		SavingsAccount withdrawInS = getSavingsAcc(accID,withdrawSAid);
		withdrawInS.setBalance(withdrawInS.getBalance() - withdrawAmount);
		
		String type =  " ";
		if(isTransfer) {
			type = "Withdraw Amount for Transfer of $";
		}
		else
			type = "Withdraw Amount of $";
		
		addTransaction(accID,withdrawInS, type + withdrawAmount);
		saveAccounts();
	}


	public void transfer(int transferAidTO, int transferSAidTO, int transferAidFROM, int transferSAidFROM,
			double transferAmount) {
		
		withdraw(transferSAidFROM, transferAmount, transferAidFROM,true);
		deposit(transferSAidTO, transferAmount, transferAidTO,true);
		
		
	}



	public SavingsAccount getSavingsAcc(int accID, int saveAccId){
		loadAccounts();
		return accountList.get(accID-1).getSAList().get(saveAccId-1);
		
	}


	public List<String> recentTransact(int accID, int historySAid) {
		SavingsAccount viewHis = getSavingsAcc(accID,historySAid);
		List<String> transact = viewHis.getTransaction();
		return transact;
//		for (int i = transact.size()- 1 ; i >= 0; i--) {
//			System.out.println(transact.get(i));
//		}
	}
	
	public Double getBalance(int accID, int historySAid) {
		SavingsAccount viewHis = getSavingsAcc(accID,historySAid);
		return viewHis.getBalance();
	}


	public void viewAccList() {
		
		for(Account acc : accountList) {
			System.out.println("Username-" + acc.getUsername() + "[Account ID:" + acc.getUserId() + "]");
		}
		
	}
	
	public Account getAccountById(int accID) {
		loadAccounts();
		for (int i = 0; i < accountList.size(); i++) {
			Account acc = accountList.get(i);
			if(acc.getUserId() == accID) {
				return acc;
			}
		}
		return null;
	}

	public void addSavingAccount(Account acc, double initialDA) {
		AtomicInteger newSAid = acc.getID_GENERATOR_SA();
		System.out.println(newSAid.getAndIncrement());
		SavingsAccount addSA = new SavingsAccount(newSAid.get() + 1, 0.02 , initialDA);
		addTransaction(acc.getUserId(),addSA,"Initial Deposit Amount");
		acc.getSAList().add(addSA);
		saveAccounts();
		 
	}


	
	
	
	
	
}
