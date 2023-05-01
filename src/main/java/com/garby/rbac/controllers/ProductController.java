package com.garby.rbac.controllers;

import com.garby.rbac.services.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

@Controller
public class ProductController {

        @Autowired
        private ProductService productService;

        // Client request handler methods...
}
