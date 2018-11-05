# docker-sphinx
#
FROM python:3.5-slim-stretch

# - Install Sphinx
# - Install ReadTheDocs.io Theme
# - Install Markdown support
# 
RUN set -xe; \
    \
    deps=' \
        recommonmark \
        sphinx \
        sphinx_rtd_theme \
    '; \
    \
    pip3 install ${deps}

# Defaut Command
CMD ["sphinx"]