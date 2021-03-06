package com.asu.cse545.group12.dao;

import java.io.Serializable;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;
import org.apache.log4j.Logger;

import com.asu.cse545.group12.constantfile.Const;
import com.asu.cse545.group12.domain.Authorization;
import com.asu.cse545.group12.domain.Transactions;

public class TransactionDaoImpl implements TransactionDao {

	private static final Logger logger = Logger.getLogger(TransactionDaoImpl.class);
	@Autowired
	SessionFactory sessionfactory;



	@Override
	@Transactional
	public int insertRow(Transactions transaction) {
		Session session = sessionfactory.openSession(); 
		Transaction tx = session.beginTransaction();  
		session.saveOrUpdate(transaction);  
		tx.commit();  
		Serializable id = session.getIdentifier(transaction);  
		session.close();  
		return (Integer) id;
	}



	@Override
	public Transactions getRowById(
			int transactionId) {
		// TODO Auto-generated method stub
		Session session = sessionfactory.openSession();
		Transactions transaction=session.load(Transactions.class,transactionId);
		return transaction ;
	}



	@Override
	public int updateRow(Transactions transaction) {
		// TODO Auto-generated method stub
		Session session = sessionfactory.openSession();
		Transaction tx = session.beginTransaction();
		session.update(transaction);
		tx.commit();
		session.close();
		return 0;
	}

	@Override
	public Transactions getTransactionByTransactionId(int transactionId){
		Session session = sessionfactory.openSession();
		Query query = session.createQuery("from transaction where transactionId =:transactionId ");
		query.setParameter("transactionId", transactionId);
		List results = query.list();
		if(logger.isDebugEnabled()){
			logger.debug("Transaction by transactionId: "+transactionId);
		}
		if(logger.isDebugEnabled()){
			logger.debug("Transaction by transactionId: "+results);
		}
		session.close();
		if(results.size()==1){
			return (Transactions)results.get(0);
		} else {
			return null;
		}
	}



	@Override
	public List<Transactions> getTransactionsByAccNum(int accountNumber) {
		Session session = sessionfactory.openSession();
		Query query = session.createQuery("from transaction where accountNumber =:accountNumber ");
		query.setParameter("accountNumber", accountNumber);
		List results = query.list();
		session.close();
		return results;

	}

	@Override
	public List<Transactions> getTransactionsBetweenDates(Integer accountNum, String fromDate, String toDate) {
		SimpleDateFormat format;
		if(fromDate.contains("/"))
			format = new SimpleDateFormat("MM/dd/yyyy");
		else
			format = new SimpleDateFormat("yyyy-MM-dd");
		try {
			Date frmDate = format.parse(fromDate);

			Date enDate = format.parse(toDate);
			

			Session session = sessionfactory.openSession();
			Query query = session.createQuery("from transaction where accountNum =:accountNumber and (TRANSACTION_STATUS ='"+Const.PENDING+"' or TRANSACTION_STATUS= '"+Const.APPROVED+"' or TRANSACTION_STATUS= '"+Const.REJECT+"') and CREATION_TIMESTAMP BETWEEN  :stDate AND :edDate");
			query.setParameter("stDate", frmDate);
			query.setParameter("edDate", enDate);
			query.setParameter("accountNumber", accountNum);
			List results = query.list();
			if(logger.isDebugEnabled()){
				logger.debug("***************************** Transactions between dates : "+results.size());
			}
			session.close();
			return results;
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;

	}


	@Override
	public List<Transactions> getTransactionsByDate(Integer accountNumber,Date toDate , Date fromDate) {
		// TODO Auto-generated method stub
		Session session = sessionfactory.openSession();
		if(logger.isDebugEnabled()){
			logger.debug("***************************** Transactions between dates getTransactionsByDate : ");
		}
		Query query = session.createQuery("from transaction where accountNumber =:accountNumber and CREATION_TIMESTAMP BETWEEN  :stDate AND :edDate");
		query.setParameter("accountNumber", accountNumber);
		query.setParameter("stDate", fromDate);
		query.setParameter("edDate", toDate);
		@SuppressWarnings("unchecked")
		List<Transactions> results = query.list();
		System.out.println(results);
		if(logger.isDebugEnabled()){
			logger.debug("***************************** Transactions between dates getTransactionsByDate : "+results.size());
		}
		session.close();
		return results;
		

	}



	@Override
	public int deleteTransaction(int transactionId) {
		Session session = sessionfactory.openSession();
		
		//Query query = session.createQuery("from transaction where transactionId =:transactionId");
		Transaction tx = session.beginTransaction();
		Query query = session.createQuery("delete transaction where transactionId = :transactionId");
		query.setParameter("transactionId",transactionId );
		int result = query.executeUpdate();
		tx.commit();
		session.close();
		return result;
		
	}
	
	}

