package com.offcn.dao;

import com.offcn.bean.Country;
import com.offcn.utils.DataSourceUtils;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import java.sql.SQLException;
import java.util.List;

public class CountryDaoImpl implements CountryDao{
    @Override
    public List<Country> selectAllCountry() {
        List<Country> list = null;
        QueryRunner qr = new QueryRunner(DataSourceUtils.getDataSource());
        String sql = "select * from country";
        try {
            list = qr.query(sql,new BeanListHandler<>(Country.class));
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return list;
    }
}