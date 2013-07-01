//
//  Shader.fsh
//  tuxblocks
//
//  Created by Thomas on 7/1/13.
//  Copyright (c) 2013 Thomas. All rights reserved.
//

varying lowp vec4 colorVarying;

void main()
{
    gl_FragColor = colorVarying;
}
