package kshop.Service.User;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kshop.Dao.BillsDao;
import kshop.Dto.CartDto;
import kshop.Entity.BillDetail;
import kshop.Entity.Bills;
@Service
public class BillsServiceImpl implements IBillsService  {

	@Autowired
	private BillsDao billsDao;
	
	@Override
	public int AddBills(Bills bill) {
		// TODO Auto-generated method stub
		return billsDao.AddBills(bill);
	}

	@Override
	public void AddBillsDetail(HashMap<Long, CartDto> carts) {
		// TODO Auto-generated method stub
		long idBills = billsDao.GetIDLastBills();
		
		for(Map.Entry<Long, CartDto> itemCart : carts.entrySet()) {
			BillDetail billDetail = new BillDetail();
			billDetail.setId_bill(idBills);
			billDetail.setId_product(itemCart.getValue().getProduct().getId_product());;
			billDetail.setQuanty(itemCart.getValue().getQuanty());
			billDetail.setTotal(itemCart.getValue().getTotalPrice());
			billsDao.AddBillsDetail(billDetail);
		}
	}

}
