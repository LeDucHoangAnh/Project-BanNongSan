package kshop.Service.User;

import org.springframework.stereotype.Service;

import kshop.Dto.PaginatesDto;

@Service
public interface IPaginateService {
	public PaginatesDto GetInfoPaginates(int totalPage, int limit, int currentPage);
}
