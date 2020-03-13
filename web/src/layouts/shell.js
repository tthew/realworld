import React from 'react';
import PropTypes from 'prop-types';
import Head from 'next/head';

function Shell({ children }) {
  return (
    <>
      <Head>
        <title>Conduit</title>
        <meta charSet="utf-8" />
        <meta name="Description" content="The mother of all demo apps" />
        <meta name="theme-color" content="#5cb85c" />
        <link
          href="//code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css"
          rel="stylesheet"
          type="text/css"
        />
        <link
          href="//fonts.googleapis.com/css?family=Titillium+Web:700|Source+Serif+Pro:400,700|Merriweather+Sans:400,700|Source+Sans+Pro:400,300,600,700,300italic,400italic,600italic,700italic&amp;display=swap"
          rel="stylesheet"
          type="text/css"
        />
        <link
          href="//demo.productionready.io/main.css"
          rel="stylesheet"
          type="text/css"
        />
        <link href="//fonts.googleapis.com" rel="preconnect" />
        <link href="//fonts.gstatic.com" rel="preconnect" />
      </Head>
      {children}
    </>
  );
}

Shell.propTypes = {
  children: PropTypes.node.isRequired
};

const getLayout = page => <Shell>{page}</Shell>;

export default getLayout;