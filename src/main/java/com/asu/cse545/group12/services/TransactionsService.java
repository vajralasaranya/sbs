package com.asu.cse545.group12.services;

import java.util.List;

import com.asu.cse545.group12.domain.Transactions;


public interface TransactionsService {

	public boolean doCredit(int accountNumber, int amount);
	public boolean doDebit(int accountNumber, int amount);
<<<<<<< Updated upstream
	public List<Transactions> searchTransactionByInternals(int accountNumber);
=======
	public boolean doTransfer(int toAccountNumber, int fromAccountNumber, int amount);
>>>>>>> Stashed changes
}
