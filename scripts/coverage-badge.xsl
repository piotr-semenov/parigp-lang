<?xml version="1.0" encoding="utf-8" ?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:svg="http://www.w3.org/2000/svg">

    <xsl:output method="xml" indent="yes" encoding="utf-8" />
    <xsl:param name="coverage" select="50" as="xsl:integer" />

    <xsl:template match="/">
        <svg xmlns="http://www.w3.org/2000/svg" width="140px" height="20px" role="img">
            <title>TextMate Grammar Coverage</title>
            <linearGradient id="a" x2="0" y2="100%">
                <stop offset="0" stop-opacity=".1" stop-color="#EEE"/>
                <stop offset="1" stop-opacity=".1"/>
            </linearGradient>
            <mask id="m"><rect width="100%" height="100%" rx="3" fill="#FFF"/></mask>
            <g mask="url(#m)">
                <rect x="0" y="0" width="69" height="20" fill="#444"/>
                <svg x="69" y="0" width="71" height="20">
                    <rect width="100%" height="100%" fill="#888888"/>
                    <rect width="0%" height="100%" fill="#33CC11" transform="">
                        <animate attributeName="width" begin="0.5s" dur="600ms" from="0%" to="{$coverage}%" repeatCount="1" fill="freeze" calcMode="spline" keyTimes="0; 1" keySplines="0.3, 0.61, 0.355, 1"/>
                    </rect>
                </svg>
                <rect width="140" height="20" fill="url(#a)"/>
            </g>
            <g aria-hidden="true" font-size="11" font-family="Verdana, DejaVu Sans, sans-serif" fill="#FFFFFF">
                <text x="6" y="15" fill="#000" opacity="0.25">Coverage</text>
                <text x="5" y="14">Coverage</text>
                <text x="135" y="15" fill="#000" opacity="0.25" text-anchor="end"><xsl:value-of select="$coverage" />%</text>
                <text x="134" y="14" text-anchor="end"><xsl:value-of select="$coverage" />%</text>
            </g>
        </svg>
    </xsl:template>

</xsl:stylesheet>
