package kshop.Service.User;

import java.util.HashMap;

import org.springframework.stereotype.Service;

import kshop.Dto.CartDto;
import kshop.Entity.Bills;
@Service
public interface IBillsService {
	public int AddBills(Bills bill);
	
	public void AddBillsDetail(HashMap<Long, CartDto> carts);
}
