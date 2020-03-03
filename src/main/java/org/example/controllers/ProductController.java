package org.example.controllers;

import org.example.model.Order;
import org.example.model.Product;
import org.example.services.OrderService;
import org.example.services.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class ProductController {
    @Autowired
    private ProductService productService;

    @Autowired
    private OrderService orderService;

    @RequestMapping("/")
    public ModelAndView home() {
        List<Product> listProducts = productService.listAll();
        ModelAndView mav = new ModelAndView("index");
        mav.addObject("listProducts", listProducts);
        return mav;
    }

    @RequestMapping("/search")
    public ModelAndView search(@RequestParam String keyword) {
        List<Product> result = productService.search(keyword);
        ModelAndView mav = new ModelAndView("search");
        mav.addObject("result", result);

        return mav;
    }

    @RequestMapping("/summary")
    public ModelAndView findOrderForm(@RequestParam Integer id) {
        ModelAndView mav = new ModelAndView("summary");
        Product product = productService.get(id);
        List<Order> orderList = orderService.listByProduct(product);

        int totalCount = 0;
        double totalSum = 0.0;
        Map<Integer, Double> sumOfCurrentOrders = new HashMap<>();
        for (Order order : orderList) {
            double currentSum = order.getQuantity() * product.getPrice();
            sumOfCurrentOrders.put(order.getId(), currentSum);
            totalSum += currentSum;
            totalCount += order.getQuantity();
        }

        mav.addObject("orderList", orderList);
        mav.addObject("sum", sumOfCurrentOrders);
        mav.addObject("totalCount", totalCount);
        mav.addObject("totalSum", totalSum);
        return mav;
    }
}