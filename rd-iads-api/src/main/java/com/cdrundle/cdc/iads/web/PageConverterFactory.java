package com.cdrundle.cdc.iads.web;

import java.util.HashMap;
import java.util.Map;

public class PageConverterFactory {

	private Map<Class<?>, Map<Class<?>,PageConverter<?, ?>>> converterMapper;
	
	private PageConverterFactory(){
		converterMapper = new HashMap<>();
	}
	public static PageConverterFactory getInstance(){
		return  PageConverterFactoryHolder.factory;
	}
	
	private static class PageConverterFactoryHolder{
		private static final PageConverterFactory factory = new PageConverterFactory();
	}
	
	@SuppressWarnings("unchecked")
	public synchronized <I,O>PageConverter<I, O> getConverter(Class<I> in,Class<O> out){
		
		Map<Class<?>,PageConverter<?, ?>> pmap = converterMapper.get(in);
		if (pmap == null) {
			pmap = new HashMap<>();
			converterMapper.put(in, pmap);
		}
		
		PageConverter<?, ?> converter = pmap.get(out);
		if (converter == null) {
			converter = new PageConverter<>(in, out);
			pmap.put(out, converter);
		}
		return (PageConverter<I, O>) converter;
	}
	

}
