import 'package:vector_drawable_annotation/vector_drawable_annotation.dart';
import 'package:vector_drawable_core/model.dart';

part 'vector.g.dart';

const kaliamSvgPath = 'kaliam.svg';
const kaliamSvg = VectorFromSvg(
  kaliamSvgPath,
  inlineTransforms: false,
  makeViewportVectorSized: true,
);

@kaliamSvg
const Vector kaliamVectorWithoutStyles = _$kaliamVectorWithoutStyles;

const liamEarDetail = StyleProperty('style', 'liam:earDetail');
const liamShyCheeks = StyleProperty('style', 'liam:shyCheeks');
const liamStroke = StyleProperty('style', 'liam:stroke');
const liamWhiskers = StyleProperty('style', 'liam:whiskers');
const liamWhiskersWidth = StyleProperty('style', 'liam:whiskersWidth');
const liamNose = StyleProperty('style', 'liam:nose');
const liamEyes = StyleProperty('style', 'liam:eyes');
const liamFill = StyleProperty('style', 'liam:fill');

const kalilStroke = StyleProperty('style', 'kalil:stroke');
const kalilEyes = StyleProperty('style', 'kalil:eyes');
const kalilNose = StyleProperty('style', 'kalil:nose');
const kalilWhiskers = StyleProperty('style', 'kalil:whiskers');
const kalilBodyFill = StyleProperty('style', 'kalil:bodyFill');
const kalilTailFill = StyleProperty('style', 'kalil:tailFill');

const heartStroke = StyleProperty('style', 'heart:stroke');
const heartFill = StyleProperty('style', 'heart:fill');

const liamRed = StyleProperty('style', 'liam:red');
const kalilPurple = StyleProperty('style', 'kalil:purple');

const yinTransform = StyleProperty('animation', 'yin:transform');
const yanTransform = StyleProperty('animation', 'yan:transform');
const heartTransform = StyleProperty('animation', 'heart:transform');

const yinFill = liamRed;
const yanFill = kalilPurple;

const _g28_2 = Symbol('g28-2');
const _rect29_8 = Symbol('rect29-8');
const _path7_5 = Symbol('path7-5');
const _path19_9 = Symbol('path19-9');
const _path22_6 = Symbol('path22-6');
const _path22_6_97 = Symbol('path22-6-97');

const _path27_3_9 = Symbol('path27-3-9');
const _path27_6 = Symbol('path27-6');
const _path27_3_9_6 = Symbol('path27-3-9-6');
const _path18_5 = Symbol('path18-5');
const _path39_2 = Symbol('path39-2');
const _path20_2 = Symbol('path20-2');
const _path2_1_9 = Symbol('path2-1-9');
const _path3_5_3 = Symbol('path3-5-3');
const _path4_4_6 = Symbol('path4-4-6');
const _path19_7_9_1 = Symbol('path19-7-9-1');
const _path19_7_3_3_9 = Symbol('path19-7-3-3-9');
const _path6_7_5_9 = Symbol('path6-7-5-9');
const _path21_2_6_3 = Symbol('path21-2-6-3');
const _path6_6_2 = Symbol('path6-6-2');
const _path21_7_4 = Symbol('path21-7-4');
const _path22_6_7_5_8 = Symbol('path22-6-7-5-8');
const _path22_6_9_5_2_4 = Symbol('path22-6-9-5-2-4');
const _path20_2_9_5_5 = Symbol('path20-2-9-5-5');
const _path23_7_3 = Symbol('path23-7-3');
const _path23_9_4_6 = Symbol('path23-9-4-6');
const _path23_4_4_1 = Symbol('path23-4-4-1');
const _path23_1_0_6 = Symbol('path23-1-0-6');
const _path23_9_0_7_3 = Symbol('path23-9-0-7-3');
const _path23_4_6_8_2 = Symbol('path23-4-6-8-2');
const _path1_5_7 = Symbol('path1-5-7');
const _path5_7_1 = Symbol('path5-7-1');
@VectorWithSomeStyles(kaliamSvg, wantedStyles: {
  VectorDrawableNodeType.AffineGroup: {
    _g28_2: {
      #tempTransformList: yanTransform,
    },
    #g28: {
      #tempTransformList: yinTransform,
    },
    #g1: {
      #tempTransformList: heartTransform,
    },
  },
  VectorDrawableNodeType.Path: {
    // Bg
    #rect29: {
      #fillColor: yanFill,
    },
    _rect29_8: {
      #fillColor: yinFill,
    },
    // Yin
    #path27: {
      #fillColor: yinFill,
    },
    _path27_3_9: {
      #fillColor: yanFill,
    },
    // Yan
    _path27_6: {
      #fillColor: yanFill,
    },
    _path27_3_9_6: {
      #fillColor: yinFill,
    },
    // Kalil
    // - Fill
    //   - Body
    #path52: {
      #fillColor: kalilBodyFill,
    },
    //   end Body
    //   - Tail
    _path18_5: {
      #fillColor: kalilTailFill,
    },
    //   end Tail
    // - Stroke
    //   - Contour
    //     - Body
    //       - Feet
    #path7: {
      #strokeColor: kalilStroke,
    },
    _path7_5: {
      #strokeColor: kalilStroke,
    },
    //       end Feet
    #path8: {
      #strokeColor: kalilStroke,
    },
    #path9: {
      #strokeColor: kalilStroke,
    },
    #path10: {
      #strokeColor: kalilStroke,
    },
    #path11: {
      #strokeColor: kalilStroke,
    },
    #path14: {
      #strokeColor: kalilStroke,
    },
    //       - Ears
    //         - Left
    #path12: {
      #strokeColor: kalilStroke,
    },
    #path13: {
      #strokeColor: kalilStroke,
    },
    //         end Left
    //         - Right
    #path15: {
      #strokeColor: kalilStroke,
    },
    //         end Right
    //       end Ears
    //     end Body
    //     - Tail
    #path16: {
      #strokeColor: kalilStroke,
    },
    #path17: {
      #strokeColor: kalilStroke,
    },
    #path18: {
      #strokeColor: kalilStroke,
    },
    //     end Tail
    //   end Contour
    //  - Eyes
    #path19: {
      #fillColor: kalilEyes,
    },
    _path19_9: {
      #fillColor: kalilEyes,
    },
    //  end Eyes
    //  - Whiskers
    _path22_6: {
      #strokeColor: kalilWhiskers,
    },
    _path22_6_97: {
      #strokeColor: kalilWhiskers,
    },
    _path20_2: {
      #fillColor: kalilNose,
    },
    //    end Whiskers
    //  end Stroke
    // end Kalil
    // Liam
    // - Fill
    _path39_2: {
      #fillColor: liamFill,
    },
    // - Stroke
    #path44: {
      #strokeColor: liamStroke,
    },
    _path2_1_9: {
      #strokeColor: liamStroke,
    },
    #path43: {
      #strokeColor: liamStroke,
    },
    //  - Feet
    _path1_5_7: {
      #strokeColor: liamStroke,
    },
    _path3_5_3: {
      #strokeColor: liamStroke,
    },
    //  end Feet
    _path4_4_6: {
      #strokeColor: liamStroke,
    },
    _path5_7_1: {
      #strokeColor: liamStroke,
    },
    #path40: {
      #strokeColor: liamStroke,
    },
    //  - Eyes
    _path19_7_9_1: {
      #fillColor: liamEyes,
    },
    _path19_7_3_3_9: {
      #fillColor: liamEyes,
    },
    //  end Eyes
    //  - Ears
    //    - Right
    _path6_7_5_9: {
      #strokeColor: liamEarDetail,
    },
    _path21_2_6_3: {
      #strokeColor: liamStroke,
    },
    //    end Right
    //    - Left
    _path6_6_2: {
      #strokeColor: liamStroke,
    },
    _path21_7_4: {
      #strokeColor: liamEarDetail,
    },
    //    end Left
    //  end Ears
    //  - Whiskers
    _path22_6_7_5_8: {
      #strokeColor: liamWhiskers,
      #strokeWidth: liamWhiskersWidth,
    },
    _path22_6_9_5_2_4: {
      #strokeColor: liamWhiskers,
      #strokeWidth: liamWhiskersWidth,
    },
    _path20_2_9_5_5: {
      #fillColor: liamNose,
    },
    //  end Whiskers
    //  - Cheeks
    //    - Left
    _path23_7_3: {
      #strokeColor: liamShyCheeks,
    },
    _path23_9_4_6: {
      #strokeColor: liamShyCheeks,
    },
    _path23_4_4_1: {
      #strokeColor: liamShyCheeks,
    },
    //    end Left
    //    - Right
    _path23_1_0_6: {
      #strokeColor: liamShyCheeks,
    },
    _path23_9_0_7_3: {
      #strokeColor: liamShyCheeks,
    },
    _path23_4_6_8_2: {
      #strokeColor: liamShyCheeks,
    },
    //    end Right
    //  end Cheeks
    // end Liam
    // Heart
    #path23: {
      #strokeColor: heartStroke,
      #fillColor: heartFill,
    },
  },
  VectorDrawableNodeType.ChildOutlet: {
    #ChildOutlet: {
      #x: StyleProperty('animation', 'child:x'),
      #y: StyleProperty('animation', 'child:y'),
      #width: StyleProperty('animation', 'child:width'),
      #height: StyleProperty('animation', 'child:height'),
    },
  },
})
const Vector kaliamVector = _$kaliamVector;
