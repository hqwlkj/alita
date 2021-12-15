import React from 'react';
import { Link, useLocation, useNavigate, Outlet, useAppContext, useRouteContext } from 'umi';


const titleList = [
  {
    pagePath: '/',
    title: '首页',
  },
  {
    pagePath: '/users',
    title: '列表',
  },
  {
    pagePath: '/users/foo',
    title: '设置',
  },
];
const navList = [];
const navBar = {
  navList,
  fixed: false,
  onLeftClick: () => {
    // router.goBack();
  },
};
const tabList = [
  {
    pagePath: '/',
    text: '首页',
    title: '首页',
    iconSize: '',
    badge: '',
  },
  {
    pagePath: '/users',
    text: '列表',
    title: '列表',
    iconSize: '',
    badge: '',
  },
  {
    pagePath: '/users/foo',
    text: '设置',
    title: '设置',
    iconSize: '',
    badge: '',
  },
];

const tabBar = {
  color: `#999999`,
  selectedColor: '#00A0FF',
  borderStyle: 'white',
  position: 'bottom',
  list: tabList,
};

const mobileLayout = {
  documentTitle: '默认标题',
  navBar,
  tabBar,
  titleList,
};

export default (props) => {
  const { pluginManager } = useAppContext()
 
  return React.createElement(require('{{{ path }}}').default, {
    layoutConfig:mobileLayout,
    hasKeepAlive: {{{ hasKeepAlive }}},
    ...props,
    hideNavBar: {{{ isMicroApp }}},
  })
}