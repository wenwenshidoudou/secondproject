package com.bsoft.util;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.BeansException;
import org.springframework.beans.factory.support.BeanDefinitionBuilder;
import org.springframework.beans.factory.support.DefaultListableBeanFactory;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ApplicationContextAware;

import java.util.HashMap;
import java.util.Set;
import java.util.TimeZone;
import java.util.concurrent.CountDownLatch;

public class AppContextHolder implements ApplicationContextAware {
    protected static final Logger LOGGER = LoggerFactory.getLogger(AppContextHolder.class);
    public static final String DEFAULT_SESSION_FACTORY = "mySessionFactory";
    public static String CONFIG_SERVER_DOMAIN = "platform";
    protected static ApplicationContext appContext;
    private static boolean devMode = true;
    private static String userTimezone = "GMT+8";

    private static CountDownLatch storeInitCountDownLatch = new CountDownLatch(1);

    public AppContextHolder() {
        setUserTimezone(userTimezone);
    }

    public AppContextHolder(boolean devMode) {
        this();
        setDevMode(devMode);
    }

    public AppContextHolder(String userTimezone) {
        setUserTimezone(userTimezone);
    }

    public AppContextHolder(boolean devMode, String userTimezone) {
        setDevMode(devMode);
        setUserTimezone(userTimezone);
    }

    public void setApplicationContext(ApplicationContext ctx) throws BeansException {
        appContext = ctx;
    }

    public static Object getBean(String beanName) {
        return appContext.getBean(beanName);
    }

    public static void removeBean(String beanName) {
        DefaultListableBeanFactory acf = (DefaultListableBeanFactory) appContext.getAutowireCapableBeanFactory();
        if (acf.containsBean(beanName)) {
            acf.removeBeanDefinition(beanName);
        }
    }

    public static void addBean(String beanName, Class<?> clz, HashMap<String, Object> properties) {
        DefaultListableBeanFactory acf = (DefaultListableBeanFactory) appContext.getAutowireCapableBeanFactory();
        if (acf.containsBean(beanName)) {
            acf.removeBeanDefinition(beanName);
        }
        BeanDefinitionBuilder bd = BeanDefinitionBuilder.rootBeanDefinition(clz);
        Set<String> names = properties.keySet();
        for (String nm : names) {
            bd.addPropertyValue(nm, properties.get(nm));
        }
        acf.registerBeanDefinition(beanName, bd.getBeanDefinition());
    }

    public static boolean containBean(String beanName) {
        return appContext.containsBean(beanName);
    }

    public static <T> T getBean(String beanName, Class<T> type) {
        return appContext.getBean(beanName, type);
    }

    public static ApplicationContext get() {
        return appContext;
    }

    public static boolean isReady() {
        return appContext != null;
    }

    public static boolean isDevMode() {
        return devMode;
    }

    public void setDevMode(boolean devMode) {
        AppContextHolder.devMode = devMode;
        LOGGER.info("Debug[devMode] is -------------------{}-------------------", devMode ? "ON" : "OFF");
    }

    public void setConfigServerName(String configServerName) {
        AppContextHolder.CONFIG_SERVER_DOMAIN = configServerName;
    }

    public static String getConfigServerName() {
        return CONFIG_SERVER_DOMAIN;
    }


    public static String getConfigServiceId(String serviceId) {
        return S.join(CONFIG_SERVER_DOMAIN, ".", serviceId);
    }

    public static String getUserTimezone() {
        return userTimezone;
    }

    public static void setUserTimezone(String userTimezone) {
        AppContextHolder.userTimezone = userTimezone;
        TimeZone.setDefault(TimeZone.getTimeZone(userTimezone));
        System.setProperty("user.timezone", userTimezone);
    }

}
