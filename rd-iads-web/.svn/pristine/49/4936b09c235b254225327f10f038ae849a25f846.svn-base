package com.cdrundle.cdc.iads.service.bo;

import com.cdrundle.common.bean.BaseQuery;
import org.apache.commons.lang3.StringUtils;
import org.springframework.data.domain.Sort;

/**
 * Created by tjee on 2017/6/7.
 */
public class SortQuery extends BaseQuery {

    private static final long serialVersionUID = 6259578047166560093L;
    private String sort;

    public String getSort() {
        return sort;
    }

    public void setSort(String sort) {
        this.sort = sort;
    }

    public Sort getSortObj() {
        if (StringUtils.isNotBlank(sort) && sort.contains(".")) {
            String filed = sort.split("\\.")[0];
            String direction = sort.split("\\.")[1];
            Sort.Direction directionSort = direction.equalsIgnoreCase("asc") ? Sort.Direction.ASC : Sort.Direction.DESC;
            return new Sort(directionSort, filed);
        }
        return null;
    }
}
