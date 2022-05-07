package com.offcn.service;

import com.offcn.bean.Country;
import com.offcn.dao.CountryDao;
import com.offcn.dao.CountryDaoImpl;

import java.util.List;

public class CountryServiceImpl implements CountryService{
    CountryDao cs = new CountryDaoImpl();
    @Override
    public List<Country> selectAllCountry() {
        return cs.selectAllCountry();
    }
}
