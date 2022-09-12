package com.lifood.stuneed.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.lifood.stuneed.entity.CategoryEntity;
import com.lifood.stuneed.entity.TypeEntity;

public interface TypeRepository extends JpaRepository<TypeEntity, Long>{

	@Query(value="SELECT distinct t.* FROM TYPE t, CATEGORY c,PRODUCT p WHERE t.id=p.type_id AND "
			+ "c.id=p.category_id AND c.id=?1", nativeQuery = true)
	public List<TypeEntity> findTypeListCategoryId(Long id);
	
}
 