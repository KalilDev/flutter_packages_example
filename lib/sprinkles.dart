import 'package:vector_drawable/vector_drawable.dart';
import 'package:xml/xml.dart';

final AnimatedVectorDrawable sprinklesAvd =
    AnimatedVectorDrawable.parseDocument(
  XmlDocument.parse("""
<animated-vector
    xmlns:android="http://schemas.android.com/apk/res/android"
    xmlns:aapt="http://schemas.android.com/aapt">
    <aapt:attr name="android:drawable">
        <vector
            android:name="vector"
            android:width="32dp"
            android:height="32dp"
            android:viewportWidth="32"
            android:viewportHeight="32">
            <path
                android:name="path"
                android:fillAlpha="1"
                android:pathData=""
                android:fillColor="?red"/>
            <path
                android:name="path_1"
                android:fillAlpha="1"
                android:pathData=""
                android:fillColor="?orange"/>
            <path
                android:name="path_2"
                android:fillAlpha="1"
                android:pathData=""
                android:fillColor="?yellow"/>
            <path
                android:name="path_3"
                android:fillAlpha="1"
                android:pathData=""
                android:fillColor="?green"/>
            <path
                android:name="path_4"
                android:fillAlpha="1"
                android:pathData=""
                android:fillColor="?cyan"/>
            <path
                android:name="path_5"
                android:fillAlpha="1"
                android:pathData=""
                android:fillColor="?lightBlue"/>
            <path
                android:name="path_6"
                android:fillAlpha="1"
                android:pathData=""
                android:fillColor="?blue"/>
            <path
                android:name="path_7"
                android:fillAlpha="1"
                android:pathData=""
                android:fillColor="?purple"/>
            <path
                android:name="path_8"
                android:fillAlpha="1"
                android:pathData=""
                android:fillColor="?pink"/>
            <path
                android:name="path_9"
                android:fillAlpha="1"
                android:pathData=""
                android:fillColor="?brown"/>
            <path
                android:name="path_10"
                android:fillAlpha="1"
                android:pathData=""
                android:fillColor="?grey"/>
        </vector>
    </aapt:attr>
    <target android:name="path">
        <aapt:attr name="android:animation">
            <set>
                <objectAnimator
                    android:propertyName="pathData"
                    android:startOffset="50"
                    android:duration="200"
                    android:valueFrom="M 9.035 13.981 L 7.511 14.428 C 7.231 14.511 6.937 14.35 6.855 14.07 C 6.772 13.789 6.933 13.495 7.213 13.413 L 8.736 12.966 C 9.017 12.883 9.311 13.044 9.393 13.324 C 9.476 13.605 9.315 13.899 9.035 13.981 Z"
                    android:valueTo="M 4.889 8.571 L 3.365 8.124 C 3.085 8.042 2.924 7.748 3.007 7.467 C 3.089 7.187 3.383 7.026 3.664 7.109 L 5.187 7.556 C 5.467 7.638 5.628 7.932 5.546 8.213 C 5.463 8.493 5.169 8.654 4.889 8.571 Z"
                    android:valueType="pathType"
                    android:interpolator="@android:interpolator/fast_out_slow_in"/>
                <objectAnimator
                    android:propertyName="fillAlpha"
                    android:duration="100"
                    android:valueFrom="0"
                    android:valueTo="1"
                    android:valueType="floatType"
                    android:interpolator="@android:interpolator/fast_out_slow_in"/>
                <objectAnimator
                    android:propertyName="fillAlpha"
                    android:startOffset="400"
                    android:duration="100"
                    android:valueFrom="1"
                    android:valueTo="0"
                    android:valueType="floatType"
                    android:interpolator="@android:interpolator/fast_out_slow_in"/>
            </set>
        </aapt:attr>
    </target>
    <target android:name="path_1">
        <aapt:attr name="android:animation">
            <set>
                <objectAnimator
                    android:propertyName="pathData"
                    android:startOffset="250"
                    android:duration="150"
                    android:valueFrom="M 11.281 10.545 L 9.758 10.098 C 9.478 10.015 9.317 9.721 9.399 9.441 C 9.482 9.16 9.776 9 10.056 9.082 L 11.579 9.529 C 11.86 9.612 12.021 9.906 11.938 10.186 C 11.856 10.467 11.562 10.627 11.281 10.545 Z"
                    android:valueTo="M 10.799 3.53 L 9.76 2.33 C 9.568 2.109 9.592 1.775 9.813 1.584 C 10.034 1.392 10.368 1.416 10.56 1.637 L 11.599 2.837 C 11.791 3.058 11.767 3.392 11.546 3.583 C 11.325 3.775 10.991 3.751 10.799 3.53 Z"
                    android:valueType="pathType"
                    android:interpolator="@android:interpolator/fast_out_slow_in"/>
                <objectAnimator
                    android:propertyName="fillAlpha"
                    android:duration="100"
                    android:valueFrom="0"
                    android:valueTo="1"
                    android:valueType="floatType"
                    android:interpolator="@android:interpolator/fast_out_slow_in"/>
                <objectAnimator
                    android:propertyName="fillAlpha"
                    android:startOffset="400"
                    android:duration="100"
                    android:valueFrom="1"
                    android:valueTo="0"
                    android:valueType="floatType"
                    android:interpolator="@android:interpolator/fast_out_slow_in"/>
            </set>
        </aapt:attr>
    </target>
    <target android:name="path_2">
        <aapt:attr name="android:animation">
            <set>
                <objectAnimator
                    android:propertyName="pathData"
                    android:startOffset="50"
                    android:duration="200"
                    android:valueFrom="M 15.029 8.869 L 13.99 7.669 C 13.798 7.448 13.822 7.114 14.043 6.923 C 14.264 6.731 14.598 6.755 14.789 6.976 L 15.829 8.176 C 16.02 8.397 15.997 8.731 15.776 8.922 C 15.555 9.114 15.221 9.09 15.029 8.869 Z"
                    android:valueTo="M 18.498 2.484 L 18.272 0.913 C 18.23 0.624 18.431 0.355 18.72 0.314 C 19.009 0.272 19.278 0.473 19.319 0.762 L 19.545 2.334 C 19.587 2.623 19.386 2.891 19.097 2.933 C 18.807 2.974 18.539 2.773 18.498 2.484 Z"
                    android:valueType="pathType"
                    android:interpolator="@android:interpolator/fast_out_slow_in"/>
                <objectAnimator
                    android:propertyName="fillAlpha"
                    android:duration="100"
                    android:valueFrom="0"
                    android:valueTo="1"
                    android:valueType="floatType"
                    android:interpolator="@android:interpolator/fast_out_slow_in"/>
                <objectAnimator
                    android:propertyName="fillAlpha"
                    android:startOffset="400"
                    android:duration="100"
                    android:valueFrom="1"
                    android:valueTo="0"
                    android:valueType="floatType"
                    android:interpolator="@android:interpolator/fast_out_slow_in"/>
            </set>
        </aapt:attr>
    </target>
    <target android:name="path_3">
        <aapt:attr name="android:animation">
            <set>
                <objectAnimator
                    android:propertyName="pathData"
                    android:startOffset="250"
                    android:duration="150"
                    android:valueFrom="M 19.088 9.485 L 18.862 7.914 C 18.821 7.624 19.021 7.356 19.311 7.315 C 19.6 7.273 19.868 7.474 19.91 7.763 L 20.136 9.334 C 20.177 9.624 19.977 9.892 19.687 9.934 C 19.398 9.975 19.13 9.774 19.088 9.485 Z"
                    android:valueTo="M 25.539 5.766 L 26.198 4.322 C 26.32 4.056 26.634 3.939 26.9 4.061 C 27.165 4.182 27.283 4.496 27.161 4.762 L 26.502 6.206 C 26.38 6.472 26.066 6.589 25.8 6.468 C 25.535 6.346 25.418 6.032 25.539 5.766 Z"
                    android:valueType="pathType"
                    android:interpolator="@android:interpolator/fast_out_slow_in"/>
                <objectAnimator
                    android:propertyName="fillAlpha"
                    android:duration="100"
                    android:valueFrom="0"
                    android:valueTo="1"
                    android:valueType="floatType"
                    android:interpolator="@android:interpolator/fast_out_slow_in"/>
                <objectAnimator
                    android:propertyName="fillAlpha"
                    android:startOffset="400"
                    android:duration="100"
                    android:valueFrom="1"
                    android:valueTo="0"
                    android:valueType="floatType"
                    android:interpolator="@android:interpolator/fast_out_slow_in"/>
            </set>
        </aapt:attr>
    </target>
    <target android:name="path_4">
        <aapt:attr name="android:animation">
            <set>
                <objectAnimator
                    android:propertyName="pathData"
                    android:startOffset="50"
                    android:duration="200"
                    android:valueFrom="M 22.17 12.198 L 22.829 10.754 C 22.951 10.488 23.265 10.371 23.53 10.492 C 23.796 10.614 23.913 10.928 23.792 11.194 L 23.132 12.638 C 23.011 12.904 22.697 13.021 22.431 12.899 C 22.165 12.778 22.048 12.464 22.17 12.198 Z"
                    android:valueTo="M 29.688 12.334 L 31.024 11.476 C 31.269 11.318 31.597 11.389 31.755 11.635 C 31.913 11.881 31.842 12.209 31.596 12.367 L 30.26 13.225 C 30.014 13.383 29.687 13.312 29.529 13.066 C 29.371 12.82 29.442 12.492 29.688 12.334 Z"
                    android:valueType="pathType"
                    android:interpolator="@android:interpolator/fast_out_slow_in"/>
                <objectAnimator
                    android:propertyName="fillAlpha"
                    android:duration="100"
                    android:valueFrom="0"
                    android:valueTo="1"
                    android:valueType="floatType"
                    android:interpolator="@android:interpolator/fast_out_slow_in"/>
                <objectAnimator
                    android:propertyName="fillAlpha"
                    android:startOffset="400"
                    android:duration="100"
                    android:valueFrom="1"
                    android:valueTo="0"
                    android:valueType="floatType"
                    android:interpolator="@android:interpolator/fast_out_slow_in"/>
            </set>
        </aapt:attr>
    </target>
    <target android:name="path_5">
        <aapt:attr name="android:animation">
            <set>
                <objectAnimator
                    android:propertyName="pathData"
                    android:startOffset="250"
                    android:duration="150"
                    android:valueFrom="M 23.295 16.146 L 24.631 15.288 C 24.877 15.13 25.204 15.201 25.362 15.447 C 25.52 15.693 25.449 16.02 25.203 16.178 L 23.868 17.037 C 23.622 17.195 23.294 17.123 23.136 16.878 C 22.978 16.632 23.049 16.304 23.295 16.146 Z"
                    android:valueTo="M 29.627 20.103 L 31.215 20.103 C 31.507 20.103 31.744 20.34 31.744 20.632 C 31.744 20.924 31.507 21.161 31.215 21.161 L 29.627 21.161 C 29.335 21.161 29.098 20.924 29.098 20.632 C 29.098 20.34 29.335 20.103 29.627 20.103 Z"
                    android:valueType="pathType"
                    android:interpolator="@android:interpolator/fast_out_slow_in"/>
                <objectAnimator
                    android:propertyName="fillAlpha"
                    android:duration="100"
                    android:valueFrom="0"
                    android:valueTo="1"
                    android:valueType="floatType"
                    android:interpolator="@android:interpolator/fast_out_slow_in"/>
                <objectAnimator
                    android:propertyName="fillAlpha"
                    android:startOffset="400"
                    android:duration="100"
                    android:valueFrom="1"
                    android:valueTo="0"
                    android:valueType="floatType"
                    android:interpolator="@android:interpolator/fast_out_slow_in"/>
            </set>
        </aapt:attr>
    </target>
    <target android:name="path_6">
        <aapt:attr name="android:animation">
            <set>
                <objectAnimator
                    android:propertyName="pathData"
                    android:startOffset="50"
                    android:duration="200"
                    android:valueFrom="M 22.108 20.076 L 23.695 20.076 C 23.987 20.076 24.224 20.313 24.224 20.605 C 24.224 20.898 23.987 21.135 23.695 21.135 L 22.108 21.135 C 21.815 21.135 21.579 20.898 21.579 20.605 C 21.579 20.313 21.815 20.076 22.108 20.076 Z"
                    android:valueTo="M 25.377 26.606 L 26.712 27.464 C 26.958 27.622 27.029 27.949 26.871 28.195 C 26.713 28.441 26.386 28.512 26.14 28.354 L 24.804 27.496 C 24.558 27.338 24.487 27.011 24.645 26.765 C 24.803 26.519 25.131 26.448 25.377 26.606 Z"
                    android:valueType="pathType"
                    android:interpolator="@android:interpolator/fast_out_slow_in"/>
                <objectAnimator
                    android:propertyName="fillAlpha"
                    android:duration="100"
                    android:valueFrom="0"
                    android:valueTo="1"
                    android:valueType="floatType"
                    android:interpolator="@android:interpolator/fast_out_slow_in"/>
                <objectAnimator
                    android:propertyName="fillAlpha"
                    android:startOffset="400"
                    android:duration="100"
                    android:valueFrom="1"
                    android:valueTo="0"
                    android:valueType="floatType"
                    android:interpolator="@android:interpolator/fast_out_slow_in"/>
            </set>
        </aapt:attr>
    </target>
    <target android:name="path_7">
        <aapt:attr name="android:animation">
            <set>
                <objectAnimator
                    android:propertyName="pathData"
                    android:startOffset="250"
                    android:duration="150"
                    android:valueFrom="M 18.984 22.74 L 20.319 23.599 C 20.565 23.757 20.636 24.084 20.478 24.33 C 20.32 24.576 19.993 24.647 19.747 24.489 L 18.412 23.631 C 18.166 23.473 18.095 23.145 18.253 22.899 C 18.411 22.654 18.738 22.582 18.984 22.74 Z"
                    android:valueTo="M 18.285 29.778 L 18.944 31.222 C 19.066 31.488 18.949 31.802 18.683 31.923 C 18.417 32.044 18.103 31.927 17.982 31.661 L 17.322 30.217 C 17.201 29.952 17.318 29.638 17.584 29.516 C 17.85 29.395 18.163 29.512 18.285 29.778 Z"
                    android:valueType="pathType"
                    android:interpolator="@android:interpolator/fast_out_slow_in"/>
                <objectAnimator
                    android:propertyName="fillAlpha"
                    android:duration="100"
                    android:valueFrom="0"
                    android:valueTo="1"
                    android:valueType="floatType"
                    android:interpolator="@android:interpolator/fast_out_slow_in"/>
                <objectAnimator
                    android:propertyName="fillAlpha"
                    android:startOffset="400"
                    android:duration="100"
                    android:valueFrom="1"
                    android:valueTo="0"
                    android:valueType="floatType"
                    android:interpolator="@android:interpolator/fast_out_slow_in"/>
            </set>
        </aapt:attr>
    </target>
    <target android:name="path_8">
        <aapt:attr name="android:animation">
            <set>
                <objectAnimator
                    android:propertyName="pathData"
                    android:startOffset="50"
                    android:duration="200"
                    android:valueFrom="M 14.916 23.293 L 15.575 24.737 C 15.697 25.002 15.579 25.316 15.314 25.438 C 15.048 25.559 14.734 25.442 14.612 25.176 L 13.953 23.732 C 13.832 23.466 13.949 23.152 14.214 23.031 C 14.48 22.91 14.794 23.027 14.916 23.293 Z"
                    android:valueTo="M 10.604 28.612 L 10.378 30.184 C 10.336 30.473 10.068 30.674 9.779 30.632 C 9.49 30.591 9.289 30.322 9.33 30.033 L 9.556 28.462 C 9.598 28.172 9.866 27.972 10.155 28.013 C 10.445 28.055 10.646 28.323 10.604 28.612 Z"
                    android:valueType="pathType"
                    android:interpolator="@android:interpolator/fast_out_slow_in"/>
                <objectAnimator
                    android:propertyName="fillAlpha"
                    android:duration="100"
                    android:valueFrom="0"
                    android:valueTo="1"
                    android:valueType="floatType"
                    android:interpolator="@android:interpolator/fast_out_slow_in"/>
                <objectAnimator
                    android:propertyName="fillAlpha"
                    android:startOffset="400"
                    android:duration="100"
                    android:valueFrom="1"
                    android:valueTo="0"
                    android:valueType="floatType"
                    android:interpolator="@android:interpolator/fast_out_slow_in"/>
            </set>
        </aapt:attr>
    </target>
    <target android:name="path_9">
        <aapt:attr name="android:animation">
            <set>
                <objectAnimator
                    android:propertyName="pathData"
                    android:startOffset="250"
                    android:duration="150"
                    android:valueFrom="M 11.195 21.558 L 10.969 23.129 C 10.927 23.418 10.659 23.619 10.37 23.578 C 10.08 23.536 9.88 23.268 9.921 22.978 L 10.147 21.407 C 10.189 21.118 10.457 20.917 10.746 20.959 C 11.035 21 11.236 21.268 11.195 21.558 Z"
                    android:valueTo="M 4.772 23.479 L 3.733 24.679 C 3.542 24.9 3.207 24.924 2.986 24.732 C 2.766 24.541 2.742 24.207 2.933 23.986 L 3.973 22.786 C 4.164 22.565 4.498 22.541 4.719 22.733 C 4.94 22.924 4.964 23.258 4.772 23.479 Z"
                    android:valueType="pathType"
                    android:interpolator="@android:interpolator/fast_out_slow_in"/>
                <objectAnimator
                    android:propertyName="fillAlpha"
                    android:duration="100"
                    android:valueFrom="0"
                    android:valueTo="1"
                    android:valueType="floatType"
                    android:interpolator="@android:interpolator/fast_out_slow_in"/>
                <objectAnimator
                    android:propertyName="fillAlpha"
                    android:startOffset="400"
                    android:duration="100"
                    android:valueFrom="1"
                    android:valueTo="0"
                    android:valueType="floatType"
                    android:interpolator="@android:interpolator/fast_out_slow_in"/>
            </set>
        </aapt:attr>
    </target>
    <target android:name="path_10">
        <aapt:attr name="android:animation">
            <set>
                <objectAnimator
                    android:propertyName="pathData"
                    android:startOffset="50"
                    android:duration="200"
                    android:valueFrom="M 9.002 18.087 L 7.963 19.286 C 7.771 19.507 7.437 19.531 7.216 19.34 C 6.995 19.148 6.971 18.814 7.163 18.593 L 8.202 17.394 C 8.394 17.173 8.728 17.149 8.949 17.34 C 9.17 17.531 9.194 17.866 9.002 18.087 Z"
                    android:valueTo="M 2.642 16.008 L 1.119 16.455 C 0.838 16.538 0.544 16.377 0.462 16.097 C 0.38 15.816 0.54 15.522 0.821 15.44 L 2.344 14.993 C 2.624 14.91 2.918 15.071 3.001 15.351 C 3.083 15.632 2.922 15.926 2.642 16.008 Z"
                    android:valueType="pathType"
                    android:interpolator="@android:interpolator/fast_out_slow_in"/>
                <objectAnimator
                    android:propertyName="fillAlpha"
                    android:duration="100"
                    android:valueFrom="0"
                    android:valueTo="1"
                    android:valueType="floatType"
                    android:interpolator="@android:interpolator/fast_out_slow_in"/>
                <objectAnimator
                    android:propertyName="fillAlpha"
                    android:startOffset="400"
                    android:duration="100"
                    android:valueFrom="1"
                    android:valueTo="0"
                    android:valueType="floatType"
                    android:interpolator="@android:interpolator/fast_out_slow_in"/>
            </set>
        </aapt:attr>
    </target>
</animated-vector>
"""),
  ResourceReference(
    "drawable",
    "avd_sprinkles.xml",
  ),
);
