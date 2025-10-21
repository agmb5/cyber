.class public Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
.super Ljava/lang/Object;
.source "SpriteBatch.java"

# interfaces
.implements Lcom/badlogic/gdx/graphics/g2d/Batch;


# static fields
.field public static defaultVertexDataType:Lcom/badlogic/gdx/graphics/Mesh$VertexDataType;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private blendDstFunc:I

.field private blendDstFuncAlpha:I

.field private blendSrcFunc:I

.field private blendSrcFuncAlpha:I

.field private blendingDisabled:Z

.field private final color:Lcom/badlogic/gdx/graphics/Color;

.field colorPacked:F

.field private final combinedMatrix:Lcom/badlogic/gdx/math/Matrix4;

.field private customShader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

.field drawing:Z

.field idx:I

.field invTexHeight:F

.field invTexWidth:F

.field lastTexture:Lcom/badlogic/gdx/graphics/Texture;

.field public maxSpritesInBatch:I

.field private mesh:Lcom/badlogic/gdx/graphics/Mesh;

.field private ownsShader:Z

.field private final projectionMatrix:Lcom/badlogic/gdx/math/Matrix4;

.field public renderCalls:I

.field private final shader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

.field public totalRenderCalls:I

.field private final transformMatrix:Lcom/badlogic/gdx/math/Matrix4;

.field final vertices:[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    sget-object v0, Lcom/badlogic/gdx/graphics/Mesh$VertexDataType;->VertexArray:Lcom/badlogic/gdx/graphics/Mesh$VertexDataType;

    sput-object v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->defaultVertexDataType:Lcom/badlogic/gdx/graphics/Mesh$VertexDataType;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/16 v0, 0x3e8

    const/4 v1, 0x0

    .line 80
    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;-><init>(ILcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 86
    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;-><init>(ILcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    return-void
.end method

.method public constructor <init>(ILcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    .line 97
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v3, 0x0

    .line 45
    iput v3, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    const/4 v4, 0x0

    .line 46
    iput-object v4, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->lastTexture:Lcom/badlogic/gdx/graphics/Texture;

    const/4 v5, 0x0

    .line 47
    iput v5, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->invTexWidth:F

    iput v5, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->invTexHeight:F

    .line 49
    iput-boolean v3, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->drawing:Z

    .line 51
    new-instance v6, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v6}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    iput-object v6, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->transformMatrix:Lcom/badlogic/gdx/math/Matrix4;

    .line 52
    new-instance v6, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v6}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    iput-object v6, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->projectionMatrix:Lcom/badlogic/gdx/math/Matrix4;

    .line 53
    new-instance v7, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v7}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    iput-object v7, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->combinedMatrix:Lcom/badlogic/gdx/math/Matrix4;

    .line 55
    iput-boolean v3, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->blendingDisabled:Z

    const/16 v7, 0x302

    .line 56
    iput v7, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->blendSrcFunc:I

    const/16 v8, 0x303

    .line 57
    iput v8, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->blendDstFunc:I

    .line 58
    iput v7, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->blendSrcFuncAlpha:I

    .line 59
    iput v8, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->blendDstFuncAlpha:I

    .line 62
    iput-object v4, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->customShader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    .line 65
    new-instance v4, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v4, v7, v7, v7, v7}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object v4, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->color:Lcom/badlogic/gdx/graphics/Color;

    .line 66
    sget v4, Lcom/badlogic/gdx/graphics/Color;->WHITE_FLOAT_BITS:F

    iput v4, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->colorPacked:F

    .line 69
    iput v3, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->renderCalls:I

    .line 72
    iput v3, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->totalRenderCalls:I

    .line 75
    iput v3, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->maxSpritesInBatch:I

    const/16 v4, 0x1fff

    if-gt v1, v4, :cond_3

    .line 101
    sget-object v4, Lcom/badlogic/gdx/Gdx;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    if-eqz v4, :cond_0

    sget-object v4, Lcom/badlogic/gdx/graphics/Mesh$VertexDataType;->VertexBufferObjectWithVAO:Lcom/badlogic/gdx/graphics/Mesh$VertexDataType;

    goto :goto_0

    :cond_0
    sget-object v4, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->defaultVertexDataType:Lcom/badlogic/gdx/graphics/Mesh$VertexDataType;

    :goto_0
    move-object v8, v4

    .line 103
    new-instance v4, Lcom/badlogic/gdx/graphics/Mesh;

    const/4 v9, 0x0

    mul-int/lit8 v10, v1, 0x4

    mul-int/lit8 v13, v1, 0x6

    const/4 v7, 0x3

    new-array v12, v7, [Lcom/badlogic/gdx/graphics/VertexAttribute;

    new-instance v7, Lcom/badlogic/gdx/graphics/VertexAttribute;

    const/4 v14, 0x1

    const/4 v11, 0x2

    const-string v15, "a_position"

    invoke-direct {v7, v14, v11, v15}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;)V

    aput-object v7, v12, v3

    new-instance v7, Lcom/badlogic/gdx/graphics/VertexAttribute;

    const/4 v15, 0x4

    const-string v3, "a_color"

    invoke-direct {v7, v15, v15, v3}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;)V

    aput-object v7, v12, v14

    new-instance v3, Lcom/badlogic/gdx/graphics/VertexAttribute;

    const/16 v7, 0x10

    const-string v14, "a_texCoord0"

    invoke-direct {v3, v7, v11, v14}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;)V

    aput-object v3, v12, v11

    move-object v7, v4

    move v11, v13

    invoke-direct/range {v7 .. v12}, Lcom/badlogic/gdx/graphics/Mesh;-><init>(Lcom/badlogic/gdx/graphics/Mesh$VertexDataType;ZII[Lcom/badlogic/gdx/graphics/VertexAttribute;)V

    iput-object v4, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    .line 108
    sget-object v3, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v3}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sget-object v4, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v4}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v6, v5, v5, v3, v4}, Lcom/badlogic/gdx/math/Matrix4;->setToOrtho2D(FFFF)Lcom/badlogic/gdx/math/Matrix4;

    mul-int/lit8 v1, v1, 0x14

    .line 110
    new-array v1, v1, [F

    iput-object v1, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    .line 113
    new-array v1, v13, [S

    const/4 v3, 0x0

    const/16 v16, 0x0

    :goto_1
    if-ge v3, v13, :cond_1

    .line 116
    aput-short v16, v1, v3

    add-int/lit8 v4, v3, 0x1

    add-int/lit8 v5, v16, 0x1

    int-to-short v5, v5

    .line 117
    aput-short v5, v1, v4

    add-int/lit8 v4, v3, 0x2

    add-int/lit8 v5, v16, 0x2

    int-to-short v5, v5

    .line 118
    aput-short v5, v1, v4

    add-int/lit8 v4, v3, 0x3

    .line 119
    aput-short v5, v1, v4

    add-int/lit8 v4, v3, 0x4

    add-int/lit8 v5, v16, 0x3

    int-to-short v5, v5

    .line 120
    aput-short v5, v1, v4

    add-int/lit8 v4, v3, 0x5

    .line 121
    aput-short v16, v1, v4

    add-int/lit8 v3, v3, 0x6

    add-int/lit8 v4, v16, 0x4

    int-to-short v4, v4

    move/from16 v16, v4

    goto :goto_1

    .line 123
    :cond_1
    iget-object v3, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    invoke-virtual {v3, v1}, Lcom/badlogic/gdx/graphics/Mesh;->setIndices([S)Lcom/badlogic/gdx/graphics/Mesh;

    if-nez v2, :cond_2

    .line 126
    invoke-static {}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->createDefaultShader()Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    move-result-object v1

    iput-object v1, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->shader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    const/4 v1, 0x1

    .line 127
    iput-boolean v1, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->ownsShader:Z

    goto :goto_2

    .line 129
    :cond_2
    iput-object v2, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->shader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    :goto_2
    return-void

    .line 99
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t have more than 8191 sprites per batch: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw v2

    :goto_4
    goto :goto_3
.end method

.method public static createDefaultShader()Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;
    .locals 4

    .line 162
    new-instance v0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    const-string v1, "attribute vec4 a_position;\nattribute vec4 a_color;\nattribute vec2 a_texCoord0;\nuniform mat4 u_projTrans;\nvarying vec4 v_color;\nvarying vec2 v_texCoords;\n\nvoid main()\n{\n   v_color = a_color;\n   v_color.a = v_color.a * (255.0/254.0);\n   v_texCoords = a_texCoord0;\n   gl_Position =  u_projTrans * a_position;\n}\n"

    const-string v2, "#ifdef GL_ES\n#define LOWP lowp\nprecision mediump float;\n#else\n#define LOWP \n#endif\nvarying LOWP vec4 v_color;\nvarying vec2 v_texCoords;\nuniform sampler2D u_texture;\nvoid main()\n{\n  gl_FragColor = v_color * texture2D(u_texture, v_texCoords);\n}"

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->isCompiled()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error compiling shader: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->getLog()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public begin()V
    .locals 2

    .line 169
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->drawing:Z

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 170
    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->renderCalls:I

    .line 172
    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/GL20;->glDepthMask(Z)V

    .line 173
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->customShader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    if-eqz v0, :cond_0

    .line 174
    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->bind()V

    goto :goto_0

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->shader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->bind()V

    .line 177
    :goto_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setupMatrices()V

    const/4 v0, 0x1

    .line 179
    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->drawing:Z

    return-void

    .line 169
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "SpriteBatch.end must be called before begin."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public disableBlending()V
    .locals 1

    .line 975
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->blendingDisabled:Z

    if-eqz v0, :cond_0

    return-void

    .line 976
    :cond_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    const/4 v0, 0x1

    .line 977
    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->blendingDisabled:Z

    return-void
.end method

.method public dispose()V
    .locals 1

    .line 1025
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Mesh;->dispose()V

    .line 1026
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->ownsShader:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->shader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->dispose()V

    :cond_0
    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/Texture;FF)V
    .locals 7

    .line 502
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Texture;->getWidth()I

    move-result v0

    int-to-float v5, v0

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Texture;->getHeight()I

    move-result v0

    int-to-float v6, v0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/Texture;FFFF)V

    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/Texture;FFFF)V
    .locals 5

    .line 507
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->drawing:Z

    if-eqz v0, :cond_2

    .line 509
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    .line 511
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->lastTexture:Lcom/badlogic/gdx/graphics/Texture;

    if-eq p1, v1, :cond_0

    .line 512
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->switchTexture(Lcom/badlogic/gdx/graphics/Texture;)V

    goto :goto_0

    .line 513
    :cond_0
    iget p1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    array-length v1, v0

    if-ne p1, v1, :cond_1

    .line 514
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    :cond_1
    :goto_0
    add-float/2addr p4, p2

    add-float/2addr p5, p3

    .line 523
    iget p1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->colorPacked:F

    .line 524
    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    .line 525
    aput p2, v0, v1

    add-int/lit8 v2, v1, 0x1

    .line 526
    aput p3, v0, v2

    add-int/lit8 v2, v1, 0x2

    .line 527
    aput p1, v0, v2

    add-int/lit8 v2, v1, 0x3

    const/4 v3, 0x0

    .line 528
    aput v3, v0, v2

    add-int/lit8 v2, v1, 0x4

    const/high16 v4, 0x3f800000    # 1.0f

    .line 529
    aput v4, v0, v2

    add-int/lit8 v2, v1, 0x5

    .line 531
    aput p2, v0, v2

    add-int/lit8 p2, v1, 0x6

    .line 532
    aput p5, v0, p2

    add-int/lit8 p2, v1, 0x7

    .line 533
    aput p1, v0, p2

    add-int/lit8 p2, v1, 0x8

    .line 534
    aput v3, v0, p2

    add-int/lit8 p2, v1, 0x9

    .line 535
    aput v3, v0, p2

    add-int/lit8 p2, v1, 0xa

    .line 537
    aput p4, v0, p2

    add-int/lit8 p2, v1, 0xb

    .line 538
    aput p5, v0, p2

    add-int/lit8 p2, v1, 0xc

    .line 539
    aput p1, v0, p2

    add-int/lit8 p2, v1, 0xd

    .line 540
    aput v4, v0, p2

    add-int/lit8 p2, v1, 0xe

    .line 541
    aput v3, v0, p2

    add-int/lit8 p2, v1, 0xf

    .line 543
    aput p4, v0, p2

    add-int/lit8 p2, v1, 0x10

    .line 544
    aput p3, v0, p2

    add-int/lit8 p2, v1, 0x11

    .line 545
    aput p1, v0, p2

    add-int/lit8 p1, v1, 0x12

    .line 546
    aput v4, v0, p1

    add-int/lit8 p1, v1, 0x13

    .line 547
    aput v4, v0, p1

    add-int/lit8 v1, v1, 0x14

    .line 548
    iput v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    return-void

    .line 507
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "SpriteBatch.begin must be called before draw."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public draw(Lcom/badlogic/gdx/graphics/Texture;FFFFFFFF)V
    .locals 3

    .line 460
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->drawing:Z

    if-eqz v0, :cond_2

    .line 462
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    .line 464
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->lastTexture:Lcom/badlogic/gdx/graphics/Texture;

    if-eq p1, v1, :cond_0

    .line 465
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->switchTexture(Lcom/badlogic/gdx/graphics/Texture;)V

    goto :goto_0

    .line 466
    :cond_0
    iget p1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    array-length v1, v0

    if-ne p1, v1, :cond_1

    .line 467
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    :cond_1
    :goto_0
    add-float/2addr p4, p2

    add-float/2addr p5, p3

    .line 472
    iget p1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->colorPacked:F

    .line 473
    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    .line 474
    aput p2, v0, v1

    add-int/lit8 v2, v1, 0x1

    .line 475
    aput p3, v0, v2

    add-int/lit8 v2, v1, 0x2

    .line 476
    aput p1, v0, v2

    add-int/lit8 v2, v1, 0x3

    .line 477
    aput p6, v0, v2

    add-int/lit8 v2, v1, 0x4

    .line 478
    aput p7, v0, v2

    add-int/lit8 v2, v1, 0x5

    .line 480
    aput p2, v0, v2

    add-int/lit8 p2, v1, 0x6

    .line 481
    aput p5, v0, p2

    add-int/lit8 p2, v1, 0x7

    .line 482
    aput p1, v0, p2

    add-int/lit8 p2, v1, 0x8

    .line 483
    aput p6, v0, p2

    add-int/lit8 p2, v1, 0x9

    .line 484
    aput p9, v0, p2

    add-int/lit8 p2, v1, 0xa

    .line 486
    aput p4, v0, p2

    add-int/lit8 p2, v1, 0xb

    .line 487
    aput p5, v0, p2

    add-int/lit8 p2, v1, 0xc

    .line 488
    aput p1, v0, p2

    add-int/lit8 p2, v1, 0xd

    .line 489
    aput p8, v0, p2

    add-int/lit8 p2, v1, 0xe

    .line 490
    aput p9, v0, p2

    add-int/lit8 p2, v1, 0xf

    .line 492
    aput p4, v0, p2

    add-int/lit8 p2, v1, 0x10

    .line 493
    aput p3, v0, p2

    add-int/lit8 p2, v1, 0x11

    .line 494
    aput p1, v0, p2

    add-int/lit8 p1, v1, 0x12

    .line 495
    aput p8, v0, p1

    add-int/lit8 p1, v1, 0x13

    .line 496
    aput p7, v0, p1

    add-int/lit8 v1, v1, 0x14

    .line 497
    iput v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    return-void

    .line 460
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "SpriteBatch.begin must be called before draw."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public draw(Lcom/badlogic/gdx/graphics/Texture;FFFFFFFFFIIIIZZ)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p4

    move/from16 v2, p5

    move/from16 v3, p11

    move/from16 v4, p12

    .line 225
    iget-boolean v5, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->drawing:Z

    if-eqz v5, :cond_7

    .line 227
    iget-object v5, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    .line 229
    iget-object v6, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->lastTexture:Lcom/badlogic/gdx/graphics/Texture;

    move-object/from16 v7, p1

    if-eq v7, v6, :cond_0

    .line 230
    invoke-virtual/range {p0 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->switchTexture(Lcom/badlogic/gdx/graphics/Texture;)V

    goto :goto_0

    .line 231
    :cond_0
    iget v6, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    array-length v7, v5

    if-ne v6, v7, :cond_1

    .line 232
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    :cond_1
    :goto_0
    add-float v6, p2, v1

    add-float v7, p3, v2

    neg-float v8, v1

    neg-float v9, v2

    sub-float v1, p6, v1

    sub-float v2, p7, v2

    const/high16 v10, 0x3f800000    # 1.0f

    cmpl-float v11, p8, v10

    if-nez v11, :cond_2

    cmpl-float v10, p9, v10

    if-eqz v10, :cond_3

    :cond_2
    mul-float v8, v8, p8

    mul-float v9, v9, p9

    mul-float v1, v1, p8

    mul-float v2, v2, p9

    :cond_3
    const/4 v10, 0x0

    cmpl-float v10, p10, v10

    if-eqz v10, :cond_4

    .line 271
    invoke-static/range {p10 .. p10}, Lcom/badlogic/gdx/math/MathUtils;->cosDeg(F)F

    move-result v10

    .line 272
    invoke-static/range {p10 .. p10}, Lcom/badlogic/gdx/math/MathUtils;->sinDeg(F)F

    move-result v11

    mul-float v12, v10, v8

    mul-float v13, v11, v9

    sub-float v13, v12, v13

    mul-float v8, v8, v11

    mul-float v9, v9, v10

    add-float/2addr v9, v8

    mul-float v14, v11, v2

    sub-float/2addr v12, v14

    mul-float v2, v2, v10

    add-float/2addr v8, v2

    mul-float v10, v10, v1

    sub-float/2addr v10, v14

    mul-float v11, v11, v1

    add-float/2addr v2, v11

    sub-float v1, v10, v12

    add-float/2addr v1, v13

    sub-float v11, v8, v9

    sub-float v11, v2, v11

    move/from16 v16, v2

    move v2, v1

    move v1, v10

    move v10, v9

    move/from16 v9, v16

    goto :goto_1

    :cond_4
    move v12, v8

    move v13, v12

    move v10, v9

    move v11, v10

    move v8, v2

    move v9, v8

    move v2, v1

    :goto_1
    add-float/2addr v13, v6

    add-float/2addr v10, v7

    add-float/2addr v12, v6

    add-float/2addr v8, v7

    add-float/2addr v1, v6

    add-float/2addr v9, v7

    add-float/2addr v2, v6

    add-float/2addr v11, v7

    int-to-float v6, v3

    .line 308
    iget v7, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->invTexWidth:F

    mul-float v6, v6, v7

    add-int v14, v4, p14

    int-to-float v14, v14

    .line 309
    iget v15, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->invTexHeight:F

    mul-float v14, v14, v15

    add-int v3, v3, p13

    int-to-float v3, v3

    mul-float v3, v3, v7

    int-to-float v4, v4

    mul-float v4, v4, v15

    if-eqz p15, :cond_5

    move/from16 v16, v6

    move v6, v3

    move/from16 v3, v16

    :cond_5
    if-eqz p16, :cond_6

    move/from16 v16, v14

    move v14, v4

    move/from16 v4, v16

    .line 325
    :cond_6
    iget v7, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->colorPacked:F

    .line 326
    iget v15, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    .line 327
    aput v13, v5, v15

    add-int/lit8 v13, v15, 0x1

    .line 328
    aput v10, v5, v13

    add-int/lit8 v10, v15, 0x2

    .line 329
    aput v7, v5, v10

    add-int/lit8 v10, v15, 0x3

    .line 330
    aput v6, v5, v10

    add-int/lit8 v10, v15, 0x4

    .line 331
    aput v14, v5, v10

    add-int/lit8 v10, v15, 0x5

    .line 333
    aput v12, v5, v10

    add-int/lit8 v10, v15, 0x6

    .line 334
    aput v8, v5, v10

    add-int/lit8 v8, v15, 0x7

    .line 335
    aput v7, v5, v8

    add-int/lit8 v8, v15, 0x8

    .line 336
    aput v6, v5, v8

    add-int/lit8 v6, v15, 0x9

    .line 337
    aput v4, v5, v6

    add-int/lit8 v6, v15, 0xa

    .line 339
    aput v1, v5, v6

    add-int/lit8 v1, v15, 0xb

    .line 340
    aput v9, v5, v1

    add-int/lit8 v1, v15, 0xc

    .line 341
    aput v7, v5, v1

    add-int/lit8 v1, v15, 0xd

    .line 342
    aput v3, v5, v1

    add-int/lit8 v1, v15, 0xe

    .line 343
    aput v4, v5, v1

    add-int/lit8 v1, v15, 0xf

    .line 345
    aput v2, v5, v1

    add-int/lit8 v1, v15, 0x10

    .line 346
    aput v11, v5, v1

    add-int/lit8 v1, v15, 0x11

    .line 347
    aput v7, v5, v1

    add-int/lit8 v1, v15, 0x12

    .line 348
    aput v3, v5, v1

    add-int/lit8 v1, v15, 0x13

    .line 349
    aput v14, v5, v1

    add-int/lit8 v15, v15, 0x14

    .line 350
    iput v15, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    return-void

    .line 225
    :cond_7
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "SpriteBatch.begin must be called before draw."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public draw(Lcom/badlogic/gdx/graphics/Texture;FFFFIIIIZZ)V
    .locals 4

    .line 356
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->drawing:Z

    if-eqz v0, :cond_4

    .line 358
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    .line 360
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->lastTexture:Lcom/badlogic/gdx/graphics/Texture;

    if-eq p1, v1, :cond_0

    .line 361
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->switchTexture(Lcom/badlogic/gdx/graphics/Texture;)V

    goto :goto_0

    .line 362
    :cond_0
    iget p1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    array-length v1, v0

    if-ne p1, v1, :cond_1

    .line 363
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    :cond_1
    :goto_0
    int-to-float p1, p6

    .line 365
    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->invTexWidth:F

    mul-float p1, p1, v1

    add-int/2addr p9, p7

    int-to-float p9, p9

    .line 366
    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->invTexHeight:F

    mul-float p9, p9, v2

    add-int/2addr p6, p8

    int-to-float p6, p6

    mul-float p6, p6, v1

    int-to-float p7, p7

    mul-float p7, p7, v2

    add-float/2addr p4, p2

    add-float/2addr p5, p3

    if-eqz p10, :cond_2

    move v3, p6

    move p6, p1

    move p1, v3

    :cond_2
    if-eqz p11, :cond_3

    move v3, p9

    move p9, p7

    move p7, v3

    .line 384
    :cond_3
    iget p8, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->colorPacked:F

    .line 385
    iget p10, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    .line 386
    aput p2, v0, p10

    add-int/lit8 p11, p10, 0x1

    .line 387
    aput p3, v0, p11

    add-int/lit8 p11, p10, 0x2

    .line 388
    aput p8, v0, p11

    add-int/lit8 p11, p10, 0x3

    .line 389
    aput p1, v0, p11

    add-int/lit8 p11, p10, 0x4

    .line 390
    aput p9, v0, p11

    add-int/lit8 p11, p10, 0x5

    .line 392
    aput p2, v0, p11

    add-int/lit8 p2, p10, 0x6

    .line 393
    aput p5, v0, p2

    add-int/lit8 p2, p10, 0x7

    .line 394
    aput p8, v0, p2

    add-int/lit8 p2, p10, 0x8

    .line 395
    aput p1, v0, p2

    add-int/lit8 p1, p10, 0x9

    .line 396
    aput p7, v0, p1

    add-int/lit8 p1, p10, 0xa

    .line 398
    aput p4, v0, p1

    add-int/lit8 p1, p10, 0xb

    .line 399
    aput p5, v0, p1

    add-int/lit8 p1, p10, 0xc

    .line 400
    aput p8, v0, p1

    add-int/lit8 p1, p10, 0xd

    .line 401
    aput p6, v0, p1

    add-int/lit8 p1, p10, 0xe

    .line 402
    aput p7, v0, p1

    add-int/lit8 p1, p10, 0xf

    .line 404
    aput p4, v0, p1

    add-int/lit8 p1, p10, 0x10

    .line 405
    aput p3, v0, p1

    add-int/lit8 p1, p10, 0x11

    .line 406
    aput p8, v0, p1

    add-int/lit8 p1, p10, 0x12

    .line 407
    aput p6, v0, p1

    add-int/lit8 p1, p10, 0x13

    .line 408
    aput p9, v0, p1

    add-int/lit8 p10, p10, 0x14

    .line 409
    iput p10, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    return-void

    .line 356
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "SpriteBatch.begin must be called before draw."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public draw(Lcom/badlogic/gdx/graphics/Texture;FFIIII)V
    .locals 5

    .line 414
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->drawing:Z

    if-eqz v0, :cond_2

    .line 416
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    .line 418
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->lastTexture:Lcom/badlogic/gdx/graphics/Texture;

    if-eq p1, v1, :cond_0

    .line 419
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->switchTexture(Lcom/badlogic/gdx/graphics/Texture;)V

    goto :goto_0

    .line 420
    :cond_0
    iget p1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    array-length v1, v0

    if-ne p1, v1, :cond_1

    .line 421
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    :cond_1
    :goto_0
    int-to-float p1, p4

    .line 423
    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->invTexWidth:F

    mul-float p1, p1, v1

    add-int v2, p5, p7

    int-to-float v2, v2

    .line 424
    iget v3, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->invTexHeight:F

    mul-float v2, v2, v3

    add-int/2addr p4, p6

    int-to-float p4, p4

    mul-float p4, p4, v1

    int-to-float p5, p5

    mul-float p5, p5, v3

    int-to-float p6, p6

    add-float/2addr p6, p2

    int-to-float p7, p7

    add-float/2addr p7, p3

    .line 430
    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->colorPacked:F

    .line 431
    iget v3, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    .line 432
    aput p2, v0, v3

    add-int/lit8 v4, v3, 0x1

    .line 433
    aput p3, v0, v4

    add-int/lit8 v4, v3, 0x2

    .line 434
    aput v1, v0, v4

    add-int/lit8 v4, v3, 0x3

    .line 435
    aput p1, v0, v4

    add-int/lit8 v4, v3, 0x4

    .line 436
    aput v2, v0, v4

    add-int/lit8 v4, v3, 0x5

    .line 438
    aput p2, v0, v4

    add-int/lit8 p2, v3, 0x6

    .line 439
    aput p7, v0, p2

    add-int/lit8 p2, v3, 0x7

    .line 440
    aput v1, v0, p2

    add-int/lit8 p2, v3, 0x8

    .line 441
    aput p1, v0, p2

    add-int/lit8 p1, v3, 0x9

    .line 442
    aput p5, v0, p1

    add-int/lit8 p1, v3, 0xa

    .line 444
    aput p6, v0, p1

    add-int/lit8 p1, v3, 0xb

    .line 445
    aput p7, v0, p1

    add-int/lit8 p1, v3, 0xc

    .line 446
    aput v1, v0, p1

    add-int/lit8 p1, v3, 0xd

    .line 447
    aput p4, v0, p1

    add-int/lit8 p1, v3, 0xe

    .line 448
    aput p5, v0, p1

    add-int/lit8 p1, v3, 0xf

    .line 450
    aput p6, v0, p1

    add-int/lit8 p1, v3, 0x10

    .line 451
    aput p3, v0, p1

    add-int/lit8 p1, v3, 0x11

    .line 452
    aput v1, v0, p1

    add-int/lit8 p1, v3, 0x12

    .line 453
    aput p4, v0, p1

    add-int/lit8 p1, v3, 0x13

    .line 454
    aput v2, v0, p1

    add-int/lit8 v3, v3, 0x14

    .line 455
    iput v3, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    return-void

    .line 414
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "SpriteBatch.begin must be called before draw."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public draw(Lcom/badlogic/gdx/graphics/Texture;[FII)V
    .locals 3

    .line 553
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->drawing:Z

    if-eqz v0, :cond_3

    .line 555
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    array-length v0, v0

    .line 557
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->lastTexture:Lcom/badlogic/gdx/graphics/Texture;

    if-eq p1, v1, :cond_0

    .line 558
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->switchTexture(Lcom/badlogic/gdx/graphics/Texture;)V

    goto :goto_0

    .line 560
    :cond_0
    iget p1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    sub-int p1, v0, p1

    if-nez p1, :cond_1

    .line 562
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    :goto_0
    move p1, v0

    .line 566
    :cond_1
    invoke-static {p1, p4}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 568
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    invoke-static {p2, p3, v1, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 569
    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    :goto_1
    sub-int/2addr p4, p1

    if-lez p4, :cond_2

    add-int/2addr p3, p1

    .line 573
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    .line 574
    invoke-static {v0, p4}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 575
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    const/4 v2, 0x0

    invoke-static {p2, p3, v1, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 576
    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    goto :goto_1

    :cond_2
    return-void

    .line 553
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "SpriteBatch.begin must be called before draw."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FF)V
    .locals 7

    .line 583
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v0

    int-to-float v5, v0

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v0

    int-to-float v6, v0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V
    .locals 7

    .line 588
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->drawing:Z

    if-eqz v0, :cond_2

    .line 590
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    .line 592
    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->texture:Lcom/badlogic/gdx/graphics/Texture;

    .line 593
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->lastTexture:Lcom/badlogic/gdx/graphics/Texture;

    if-eq v1, v2, :cond_0

    .line 594
    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->switchTexture(Lcom/badlogic/gdx/graphics/Texture;)V

    goto :goto_0

    .line 595
    :cond_0
    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    array-length v2, v0

    if-ne v1, v2, :cond_1

    .line 596
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    :cond_1
    :goto_0
    add-float/2addr p4, p2

    add-float/2addr p5, p3

    .line 600
    iget v1, p1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u:F

    .line 601
    iget v2, p1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v2:F

    .line 602
    iget v3, p1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u2:F

    .line 603
    iget p1, p1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v:F

    .line 605
    iget v4, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->colorPacked:F

    .line 606
    iget v5, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    .line 607
    aput p2, v0, v5

    add-int/lit8 v6, v5, 0x1

    .line 608
    aput p3, v0, v6

    add-int/lit8 v6, v5, 0x2

    .line 609
    aput v4, v0, v6

    add-int/lit8 v6, v5, 0x3

    .line 610
    aput v1, v0, v6

    add-int/lit8 v6, v5, 0x4

    .line 611
    aput v2, v0, v6

    add-int/lit8 v6, v5, 0x5

    .line 613
    aput p2, v0, v6

    add-int/lit8 p2, v5, 0x6

    .line 614
    aput p5, v0, p2

    add-int/lit8 p2, v5, 0x7

    .line 615
    aput v4, v0, p2

    add-int/lit8 p2, v5, 0x8

    .line 616
    aput v1, v0, p2

    add-int/lit8 p2, v5, 0x9

    .line 617
    aput p1, v0, p2

    add-int/lit8 p2, v5, 0xa

    .line 619
    aput p4, v0, p2

    add-int/lit8 p2, v5, 0xb

    .line 620
    aput p5, v0, p2

    add-int/lit8 p2, v5, 0xc

    .line 621
    aput v4, v0, p2

    add-int/lit8 p2, v5, 0xd

    .line 622
    aput v3, v0, p2

    add-int/lit8 p2, v5, 0xe

    .line 623
    aput p1, v0, p2

    add-int/lit8 p1, v5, 0xf

    .line 625
    aput p4, v0, p1

    add-int/lit8 p1, v5, 0x10

    .line 626
    aput p3, v0, p1

    add-int/lit8 p1, v5, 0x11

    .line 627
    aput v4, v0, p1

    add-int/lit8 p1, v5, 0x12

    .line 628
    aput v3, v0, p1

    add-int/lit8 p1, v5, 0x13

    .line 629
    aput v2, v0, p1

    add-int/lit8 v5, v5, 0x14

    .line 630
    iput v5, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    return-void

    .line 588
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "SpriteBatch.begin must be called before draw."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFFFFFFF)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p4

    move/from16 v3, p5

    .line 636
    iget-boolean v4, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->drawing:Z

    if-eqz v4, :cond_5

    .line 638
    iget-object v4, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    .line 640
    iget-object v5, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->texture:Lcom/badlogic/gdx/graphics/Texture;

    .line 641
    iget-object v6, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->lastTexture:Lcom/badlogic/gdx/graphics/Texture;

    if-eq v5, v6, :cond_0

    .line 642
    invoke-virtual {v0, v5}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->switchTexture(Lcom/badlogic/gdx/graphics/Texture;)V

    goto :goto_0

    .line 643
    :cond_0
    iget v5, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    array-length v6, v4

    if-ne v5, v6, :cond_1

    .line 644
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    :cond_1
    :goto_0
    add-float v5, p2, v2

    add-float v6, p3, v3

    neg-float v7, v2

    neg-float v8, v3

    sub-float v2, p6, v2

    sub-float v3, p7, v3

    const/high16 v9, 0x3f800000    # 1.0f

    cmpl-float v10, p8, v9

    if-nez v10, :cond_2

    cmpl-float v9, p9, v9

    if-eqz v9, :cond_3

    :cond_2
    mul-float v7, v7, p8

    mul-float v8, v8, p9

    mul-float v2, v2, p8

    mul-float v3, v3, p9

    :cond_3
    const/4 v9, 0x0

    cmpl-float v9, p10, v9

    if-eqz v9, :cond_4

    .line 683
    invoke-static/range {p10 .. p10}, Lcom/badlogic/gdx/math/MathUtils;->cosDeg(F)F

    move-result v9

    .line 684
    invoke-static/range {p10 .. p10}, Lcom/badlogic/gdx/math/MathUtils;->sinDeg(F)F

    move-result v10

    mul-float v11, v9, v7

    mul-float v12, v10, v8

    sub-float v12, v11, v12

    mul-float v7, v7, v10

    mul-float v8, v8, v9

    add-float/2addr v8, v7

    mul-float v13, v10, v3

    sub-float/2addr v11, v13

    mul-float v3, v3, v9

    add-float/2addr v7, v3

    mul-float v9, v9, v2

    sub-float/2addr v9, v13

    mul-float v10, v10, v2

    add-float/2addr v3, v10

    sub-float v2, v9, v11

    add-float/2addr v2, v12

    sub-float v10, v7, v8

    sub-float v10, v3, v10

    move/from16 v16, v3

    move v3, v2

    move v2, v9

    move v9, v8

    move/from16 v8, v16

    goto :goto_1

    :cond_4
    move v11, v7

    move v12, v11

    move v9, v8

    move v10, v9

    move v7, v3

    move v8, v7

    move v3, v2

    :goto_1
    add-float/2addr v12, v5

    add-float/2addr v9, v6

    add-float/2addr v11, v5

    add-float/2addr v7, v6

    add-float/2addr v2, v5

    add-float/2addr v8, v6

    add-float/2addr v3, v5

    add-float/2addr v10, v6

    .line 720
    iget v5, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u:F

    .line 721
    iget v6, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v2:F

    .line 722
    iget v13, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u2:F

    .line 723
    iget v1, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v:F

    .line 725
    iget v14, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->colorPacked:F

    .line 726
    iget v15, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    .line 727
    aput v12, v4, v15

    add-int/lit8 v12, v15, 0x1

    .line 728
    aput v9, v4, v12

    add-int/lit8 v9, v15, 0x2

    .line 729
    aput v14, v4, v9

    add-int/lit8 v9, v15, 0x3

    .line 730
    aput v5, v4, v9

    add-int/lit8 v9, v15, 0x4

    .line 731
    aput v6, v4, v9

    add-int/lit8 v9, v15, 0x5

    .line 733
    aput v11, v4, v9

    add-int/lit8 v9, v15, 0x6

    .line 734
    aput v7, v4, v9

    add-int/lit8 v7, v15, 0x7

    .line 735
    aput v14, v4, v7

    add-int/lit8 v7, v15, 0x8

    .line 736
    aput v5, v4, v7

    add-int/lit8 v5, v15, 0x9

    .line 737
    aput v1, v4, v5

    add-int/lit8 v5, v15, 0xa

    .line 739
    aput v2, v4, v5

    add-int/lit8 v2, v15, 0xb

    .line 740
    aput v8, v4, v2

    add-int/lit8 v2, v15, 0xc

    .line 741
    aput v14, v4, v2

    add-int/lit8 v2, v15, 0xd

    .line 742
    aput v13, v4, v2

    add-int/lit8 v2, v15, 0xe

    .line 743
    aput v1, v4, v2

    add-int/lit8 v1, v15, 0xf

    .line 745
    aput v3, v4, v1

    add-int/lit8 v1, v15, 0x10

    .line 746
    aput v10, v4, v1

    add-int/lit8 v1, v15, 0x11

    .line 747
    aput v14, v4, v1

    add-int/lit8 v1, v15, 0x12

    .line 748
    aput v13, v4, v1

    add-int/lit8 v1, v15, 0x13

    .line 749
    aput v6, v4, v1

    add-int/lit8 v15, v15, 0x14

    .line 750
    iput v15, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    return-void

    .line 636
    :cond_5
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "SpriteBatch.begin must be called before draw."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFFFFFFFZ)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p4

    move/from16 v3, p5

    .line 756
    iget-boolean v4, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->drawing:Z

    if-eqz v4, :cond_6

    .line 758
    iget-object v4, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    .line 760
    iget-object v5, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->texture:Lcom/badlogic/gdx/graphics/Texture;

    .line 761
    iget-object v6, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->lastTexture:Lcom/badlogic/gdx/graphics/Texture;

    if-eq v5, v6, :cond_0

    .line 762
    invoke-virtual {v0, v5}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->switchTexture(Lcom/badlogic/gdx/graphics/Texture;)V

    goto :goto_0

    .line 763
    :cond_0
    iget v5, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    array-length v6, v4

    if-ne v5, v6, :cond_1

    .line 764
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    :cond_1
    :goto_0
    add-float v5, p2, v2

    add-float v6, p3, v3

    neg-float v7, v2

    neg-float v8, v3

    sub-float v2, p6, v2

    sub-float v3, p7, v3

    const/high16 v9, 0x3f800000    # 1.0f

    cmpl-float v10, p8, v9

    if-nez v10, :cond_2

    cmpl-float v9, p9, v9

    if-eqz v9, :cond_3

    :cond_2
    mul-float v7, v7, p8

    mul-float v8, v8, p9

    mul-float v2, v2, p8

    mul-float v3, v3, p9

    :cond_3
    const/4 v9, 0x0

    cmpl-float v9, p10, v9

    if-eqz v9, :cond_4

    .line 803
    invoke-static/range {p10 .. p10}, Lcom/badlogic/gdx/math/MathUtils;->cosDeg(F)F

    move-result v9

    .line 804
    invoke-static/range {p10 .. p10}, Lcom/badlogic/gdx/math/MathUtils;->sinDeg(F)F

    move-result v10

    mul-float v11, v9, v7

    mul-float v12, v10, v8

    sub-float v12, v11, v12

    mul-float v7, v7, v10

    mul-float v8, v8, v9

    add-float/2addr v8, v7

    mul-float v13, v10, v3

    sub-float/2addr v11, v13

    mul-float v3, v3, v9

    add-float/2addr v7, v3

    mul-float v9, v9, v2

    sub-float/2addr v9, v13

    mul-float v10, v10, v2

    add-float/2addr v3, v10

    sub-float v2, v9, v11

    add-float/2addr v2, v12

    sub-float v10, v7, v8

    sub-float v10, v3, v10

    move/from16 v18, v3

    move v3, v2

    move v2, v9

    move v9, v8

    move/from16 v8, v18

    goto :goto_1

    :cond_4
    move v11, v7

    move v12, v11

    move v9, v8

    move v10, v9

    move v7, v3

    move v8, v7

    move v3, v2

    :goto_1
    add-float/2addr v12, v5

    add-float/2addr v9, v6

    add-float/2addr v11, v5

    add-float/2addr v7, v6

    add-float/2addr v2, v5

    add-float/2addr v8, v6

    add-float/2addr v3, v5

    add-float/2addr v10, v6

    if-eqz p11, :cond_5

    .line 842
    iget v5, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u2:F

    .line 843
    iget v6, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v2:F

    .line 844
    iget v13, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u:F

    .line 845
    iget v14, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v2:F

    .line 846
    iget v15, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u:F

    move/from16 p2, v5

    .line 847
    iget v5, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v:F

    move/from16 p3, v5

    .line 848
    iget v5, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u2:F

    .line 849
    iget v1, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v:F

    goto :goto_2

    .line 851
    :cond_5
    iget v5, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u:F

    .line 852
    iget v6, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v:F

    .line 853
    iget v13, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u2:F

    .line 854
    iget v14, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v:F

    .line 855
    iget v15, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u2:F

    move/from16 p2, v5

    .line 856
    iget v5, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v2:F

    move/from16 p3, v5

    .line 857
    iget v5, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u:F

    .line 858
    iget v1, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v2:F

    :goto_2
    move/from16 p1, v1

    move/from16 v16, v14

    move/from16 v17, v15

    move v14, v6

    move v15, v13

    move/from16 v6, p3

    move v13, v5

    move/from16 v5, p2

    .line 861
    iget v1, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->colorPacked:F

    move/from16 p2, v13

    .line 862
    iget v13, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    .line 863
    aput v12, v4, v13

    add-int/lit8 v12, v13, 0x1

    .line 864
    aput v9, v4, v12

    add-int/lit8 v9, v13, 0x2

    .line 865
    aput v1, v4, v9

    add-int/lit8 v9, v13, 0x3

    .line 866
    aput v5, v4, v9

    add-int/lit8 v5, v13, 0x4

    .line 867
    aput v14, v4, v5

    add-int/lit8 v5, v13, 0x5

    .line 869
    aput v11, v4, v5

    add-int/lit8 v5, v13, 0x6

    .line 870
    aput v7, v4, v5

    add-int/lit8 v5, v13, 0x7

    .line 871
    aput v1, v4, v5

    add-int/lit8 v5, v13, 0x8

    .line 872
    aput v15, v4, v5

    add-int/lit8 v5, v13, 0x9

    .line 873
    aput v16, v4, v5

    add-int/lit8 v5, v13, 0xa

    .line 875
    aput v2, v4, v5

    add-int/lit8 v2, v13, 0xb

    .line 876
    aput v8, v4, v2

    add-int/lit8 v2, v13, 0xc

    .line 877
    aput v1, v4, v2

    add-int/lit8 v2, v13, 0xd

    .line 878
    aput v17, v4, v2

    add-int/lit8 v2, v13, 0xe

    .line 879
    aput v6, v4, v2

    add-int/lit8 v2, v13, 0xf

    .line 881
    aput v3, v4, v2

    add-int/lit8 v2, v13, 0x10

    .line 882
    aput v10, v4, v2

    add-int/lit8 v2, v13, 0x11

    .line 883
    aput v1, v4, v2

    add-int/lit8 v1, v13, 0x12

    .line 884
    aput p2, v4, v1

    add-int/lit8 v1, v13, 0x13

    .line 885
    aput p1, v4, v1

    add-int/lit8 v13, v13, 0x14

    .line 886
    iput v13, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    return-void

    .line 756
    :cond_6
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "SpriteBatch.begin must be called before draw."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFLcom/badlogic/gdx/math/Affine2;)V
    .locals 11

    .line 891
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->drawing:Z

    if-eqz v0, :cond_2

    .line 893
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    .line 895
    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->texture:Lcom/badlogic/gdx/graphics/Texture;

    .line 896
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->lastTexture:Lcom/badlogic/gdx/graphics/Texture;

    if-eq v1, v2, :cond_0

    .line 897
    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->switchTexture(Lcom/badlogic/gdx/graphics/Texture;)V

    goto :goto_0

    .line 898
    :cond_0
    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    array-length v2, v0

    if-ne v1, v2, :cond_1

    .line 899
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    .line 903
    :cond_1
    :goto_0
    iget v1, p4, Lcom/badlogic/gdx/math/Affine2;->m02:F

    .line 904
    iget v2, p4, Lcom/badlogic/gdx/math/Affine2;->m12:F

    .line 905
    iget v3, p4, Lcom/badlogic/gdx/math/Affine2;->m01:F

    mul-float v3, v3, p3

    iget v4, p4, Lcom/badlogic/gdx/math/Affine2;->m02:F

    add-float/2addr v3, v4

    .line 906
    iget v4, p4, Lcom/badlogic/gdx/math/Affine2;->m11:F

    mul-float v4, v4, p3

    iget v5, p4, Lcom/badlogic/gdx/math/Affine2;->m12:F

    add-float/2addr v4, v5

    .line 907
    iget v5, p4, Lcom/badlogic/gdx/math/Affine2;->m00:F

    mul-float v5, v5, p2

    iget v6, p4, Lcom/badlogic/gdx/math/Affine2;->m01:F

    mul-float v6, v6, p3

    add-float/2addr v5, v6

    iget v6, p4, Lcom/badlogic/gdx/math/Affine2;->m02:F

    add-float/2addr v5, v6

    .line 908
    iget v6, p4, Lcom/badlogic/gdx/math/Affine2;->m10:F

    mul-float v6, v6, p2

    iget v7, p4, Lcom/badlogic/gdx/math/Affine2;->m11:F

    mul-float v7, v7, p3

    add-float/2addr v6, v7

    iget p3, p4, Lcom/badlogic/gdx/math/Affine2;->m12:F

    add-float/2addr v6, p3

    .line 909
    iget p3, p4, Lcom/badlogic/gdx/math/Affine2;->m00:F

    mul-float p3, p3, p2

    iget v7, p4, Lcom/badlogic/gdx/math/Affine2;->m02:F

    add-float/2addr p3, v7

    .line 910
    iget v7, p4, Lcom/badlogic/gdx/math/Affine2;->m10:F

    mul-float v7, v7, p2

    iget p2, p4, Lcom/badlogic/gdx/math/Affine2;->m12:F

    add-float/2addr v7, p2

    .line 912
    iget p2, p1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u:F

    .line 913
    iget p4, p1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v2:F

    .line 914
    iget v8, p1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u2:F

    .line 915
    iget p1, p1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v:F

    .line 917
    iget v9, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->colorPacked:F

    .line 918
    iget v10, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    .line 919
    aput v1, v0, v10

    add-int/lit8 v1, v10, 0x1

    .line 920
    aput v2, v0, v1

    add-int/lit8 v1, v10, 0x2

    .line 921
    aput v9, v0, v1

    add-int/lit8 v1, v10, 0x3

    .line 922
    aput p2, v0, v1

    add-int/lit8 v1, v10, 0x4

    .line 923
    aput p4, v0, v1

    add-int/lit8 v1, v10, 0x5

    .line 925
    aput v3, v0, v1

    add-int/lit8 v1, v10, 0x6

    .line 926
    aput v4, v0, v1

    add-int/lit8 v1, v10, 0x7

    .line 927
    aput v9, v0, v1

    add-int/lit8 v1, v10, 0x8

    .line 928
    aput p2, v0, v1

    add-int/lit8 p2, v10, 0x9

    .line 929
    aput p1, v0, p2

    add-int/lit8 p2, v10, 0xa

    .line 931
    aput v5, v0, p2

    add-int/lit8 p2, v10, 0xb

    .line 932
    aput v6, v0, p2

    add-int/lit8 p2, v10, 0xc

    .line 933
    aput v9, v0, p2

    add-int/lit8 p2, v10, 0xd

    .line 934
    aput v8, v0, p2

    add-int/lit8 p2, v10, 0xe

    .line 935
    aput p1, v0, p2

    add-int/lit8 p1, v10, 0xf

    .line 937
    aput p3, v0, p1

    add-int/lit8 p1, v10, 0x10

    .line 938
    aput v7, v0, p1

    add-int/lit8 p1, v10, 0x11

    .line 939
    aput v9, v0, p1

    add-int/lit8 p1, v10, 0x12

    .line 940
    aput v8, v0, p1

    add-int/lit8 p1, v10, 0x13

    .line 941
    aput p4, v0, p1

    add-int/lit8 v10, v10, 0x14

    .line 942
    iput v10, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    return-void

    .line 891
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "SpriteBatch.begin must be called before draw."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public enableBlending()V
    .locals 1

    .line 982
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->blendingDisabled:Z

    if-nez v0, :cond_0

    return-void

    .line 983
    :cond_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    const/4 v0, 0x0

    .line 984
    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->blendingDisabled:Z

    return-void
.end method

.method public end()V
    .locals 2

    .line 184
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->drawing:Z

    if-eqz v0, :cond_2

    .line 185
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    :cond_0
    const/4 v0, 0x0

    .line 186
    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->lastTexture:Lcom/badlogic/gdx/graphics/Texture;

    const/4 v0, 0x0

    .line 187
    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->drawing:Z

    .line 189
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    const/4 v1, 0x1

    .line 190
    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glDepthMask(Z)V

    .line 191
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->isBlendingEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0xbe2

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glDisable(I)V

    :cond_1
    return-void

    .line 184
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "SpriteBatch.begin must be called before end."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public flush()V
    .locals 8

    .line 947
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    if-nez v0, :cond_0

    return-void

    .line 949
    :cond_0
    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->renderCalls:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->renderCalls:I

    .line 950
    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->totalRenderCalls:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->totalRenderCalls:I

    .line 951
    div-int/lit8 v0, v0, 0x14

    .line 952
    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->maxSpritesInBatch:I

    if-le v0, v1, :cond_1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->maxSpritesInBatch:I

    :cond_1
    mul-int/lit8 v0, v0, 0x6

    .line 955
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->lastTexture:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Texture;->bind()V

    .line 956
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    .line 957
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v3, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Lcom/badlogic/gdx/graphics/Mesh;->setVertices([FII)Lcom/badlogic/gdx/graphics/Mesh;

    .line 958
    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Mesh;->getIndicesBuffer()Ljava/nio/ShortBuffer;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    .line 959
    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Mesh;->getIndicesBuffer()Ljava/nio/ShortBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/nio/ShortBuffer;->limit(I)Ljava/nio/Buffer;

    .line 961
    iget-boolean v2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->blendingDisabled:Z

    const/16 v3, 0xbe2

    if-eqz v2, :cond_2

    .line 962
    sget-object v2, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v2, v3}, Lcom/badlogic/gdx/graphics/GL20;->glDisable(I)V

    goto :goto_0

    .line 964
    :cond_2
    sget-object v2, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v2, v3}, Lcom/badlogic/gdx/graphics/GL20;->glEnable(I)V

    .line 965
    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->blendSrcFunc:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3

    sget-object v2, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    iget v3, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->blendSrcFunc:I

    iget v5, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->blendDstFunc:I

    iget v6, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->blendSrcFuncAlpha:I

    iget v7, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->blendDstFuncAlpha:I

    invoke-interface {v2, v3, v5, v6, v7}, Lcom/badlogic/gdx/graphics/GL20;->glBlendFuncSeparate(IIII)V

    .line 968
    :cond_3
    :goto_0
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->customShader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    if-eqz v2, :cond_4

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->shader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    :goto_1
    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/badlogic/gdx/graphics/Mesh;->render(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;III)V

    .line 970
    iput v4, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    return-void
.end method

.method public getBlendDstFunc()I
    .locals 1

    .line 1010
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->blendDstFunc:I

    return v0
.end method

.method public getBlendDstFuncAlpha()I
    .locals 1

    .line 1020
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->blendDstFuncAlpha:I

    return v0
.end method

.method public getBlendSrcFunc()I
    .locals 1

    .line 1005
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->blendSrcFunc:I

    return v0
.end method

.method public getBlendSrcFuncAlpha()I
    .locals 1

    .line 1015
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->blendSrcFuncAlpha:I

    return v0
.end method

.method public getColor()Lcom/badlogic/gdx/graphics/Color;
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->color:Lcom/badlogic/gdx/graphics/Color;

    return-object v0
.end method

.method public getPackedColor()F
    .locals 1

    .line 219
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->colorPacked:F

    return v0
.end method

.method public getProjectionMatrix()Lcom/badlogic/gdx/math/Matrix4;
    .locals 1

    .line 1031
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->projectionMatrix:Lcom/badlogic/gdx/math/Matrix4;

    return-object v0
.end method

.method public getShader()Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;
    .locals 1

    .line 1088
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->customShader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    if-nez v0, :cond_0

    .line 1089
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->shader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    :cond_0
    return-object v0
.end method

.method public getTransformMatrix()Lcom/badlogic/gdx/math/Matrix4;
    .locals 1

    .line 1036
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->transformMatrix:Lcom/badlogic/gdx/math/Matrix4;

    return-object v0
.end method

.method public isBlendingEnabled()Z
    .locals 1

    .line 1096
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->blendingDisabled:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isDrawing()Z
    .locals 1

    .line 1100
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->drawing:Z

    return v0
.end method

.method public setBlendFunction(II)V
    .locals 0

    .line 989
    invoke-virtual {p0, p1, p2, p1, p2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setBlendFunctionSeparate(IIII)V

    return-void
.end method

.method public setBlendFunctionSeparate(IIII)V
    .locals 1

    .line 994
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->blendSrcFunc:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->blendDstFunc:I

    if-ne v0, p2, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->blendSrcFuncAlpha:I

    if-ne v0, p3, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->blendDstFuncAlpha:I

    if-ne v0, p4, :cond_0

    return-void

    .line 996
    :cond_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    .line 997
    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->blendSrcFunc:I

    .line 998
    iput p2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->blendDstFunc:I

    .line 999
    iput p3, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->blendSrcFuncAlpha:I

    .line 1000
    iput p4, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->blendDstFuncAlpha:I

    return-void
.end method

.method public setColor(FFFF)V
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/Color;->set(FFFF)Lcom/badlogic/gdx/graphics/Color;

    .line 203
    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result p1

    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->colorPacked:F

    return-void
.end method

.method public setColor(Lcom/badlogic/gdx/graphics/Color;)V
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/graphics/Color;->set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    .line 197
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result p1

    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->colorPacked:F

    return-void
.end method

.method public setPackedColor(F)V
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-static {v0, p1}, Lcom/badlogic/gdx/graphics/Color;->abgr8888ToColor(Lcom/badlogic/gdx/graphics/Color;F)V

    .line 214
    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->colorPacked:F

    return-void
.end method

.method public setProjectionMatrix(Lcom/badlogic/gdx/math/Matrix4;)V
    .locals 1

    .line 1041
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->drawing:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    .line 1042
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->projectionMatrix:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    .line 1043
    iget-boolean p1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->drawing:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setupMatrices()V

    :cond_1
    return-void
.end method

.method public setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V
    .locals 1

    .line 1073
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->drawing:Z

    if-eqz v0, :cond_0

    .line 1074
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    .line 1076
    :cond_0
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->customShader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    .line 1077
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->drawing:Z

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    .line 1079
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->bind()V

    goto :goto_0

    .line 1081
    :cond_1
    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->shader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->bind()V

    .line 1082
    :goto_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setupMatrices()V

    :cond_2
    return-void
.end method

.method public setTransformMatrix(Lcom/badlogic/gdx/math/Matrix4;)V
    .locals 1

    .line 1048
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->drawing:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    .line 1049
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->transformMatrix:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    .line 1050
    iget-boolean p1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->drawing:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setupMatrices()V

    :cond_1
    return-void
.end method

.method protected setupMatrices()V
    .locals 5

    .line 1054
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->combinedMatrix:Lcom/badlogic/gdx/math/Matrix4;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->projectionMatrix:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->transformMatrix:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Matrix4;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    .line 1055
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->customShader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    const/4 v1, 0x0

    const-string v2, "u_texture"

    const-string v3, "u_projTrans"

    if-eqz v0, :cond_0

    .line 1056
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->combinedMatrix:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, v3, v4}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformMatrix(Ljava/lang/String;Lcom/badlogic/gdx/math/Matrix4;)V

    .line 1057
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->customShader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v0, v2, v1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformi(Ljava/lang/String;I)V

    goto :goto_0

    .line 1059
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->shader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->combinedMatrix:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, v3, v4}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformMatrix(Ljava/lang/String;Lcom/badlogic/gdx/math/Matrix4;)V

    .line 1060
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->shader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v0, v2, v1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformi(Ljava/lang/String;I)V

    :goto_0
    return-void
.end method

.method protected switchTexture(Lcom/badlogic/gdx/graphics/Texture;)V
    .locals 2

    .line 1065
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    .line 1066
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->lastTexture:Lcom/badlogic/gdx/graphics/Texture;

    .line 1067
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Texture;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    div-float v0, v1, v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->invTexWidth:F

    .line 1068
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Texture;->getHeight()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr v1, p1

    iput v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->invTexHeight:F

    return-void
.end method
