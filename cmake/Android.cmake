# Android specific configuration
if(ANDROID)
  set(cxx_flags "-D__ANDROID__ -DLIBED2K_USE_BOOST_DATE_TIME")
  set(l_flags " ")
  if(DEFINED production)
    set(cxx_flags "${cxx_flags}")
  else(DEFINED production)
    set(cxx_flags "${cxx_flags} -DLIBED2K_DEBUG")
  endif(DEFINED production)
  
if(PRODUCTION)
    set(out_dir "${out_dir}/release")
else(DEFINED production)
    set(out_dir "${out_dir}/debug")
endif(PRODUCTION)

endif(ANDROID)

