.class public Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;
.super Ljava/lang/Object;
.source "PolygonSpriteBatch.java"

# interfaces
.implements Lcom/badlogic/gdx/graphics/g2d/PolygonBatch;


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

.field private drawing:Z

.field private invTexHeight:F

.field private invTexWidth:F

.field private lastTexture:Lcom/badlogic/gdx/graphics/Texture;

.field public maxTrianglesInBatch:I

.field private mesh:Lcom/badlogic/gdx/graphics/Mesh;

.field private ownsShader:Z

.field private final projectionMatrix:Lcom/badlogic/gdx/math/Matrix4;

.field public renderCalls:I

.field private final shader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

.field public totalRenderCalls:I

.field private final transformMatrix:Lcom/badlogic/gdx/math/Matrix4;

.field private triangleIndex:I

.field private final triangles:[S

.field private vertexIndex:I

.field private final vertices:[F


# direct methods
.method public constructor <init>()V
    .locals 2

    const/16 v0, 0x7d0

    const/4 v1, 0x0

    .line 97
    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;-><init>(ILcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    mul-int/lit8 v0, p1, 0x2

    const/4 v1, 0x0

    .line 104
    invoke-direct {p0, p1, v0, v1}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;-><init>(IILcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    return-void
.end method

.method public constructor <init>(IILcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V
    .locals 11

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 65
    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->invTexWidth:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->invTexHeight:F

    .line 68
    new-instance v1, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v1}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->transformMatrix:Lcom/badlogic/gdx/math/Matrix4;

    .line 69
    new-instance v1, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v1}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->projectionMatrix:Lcom/badlogic/gdx/math/Matrix4;

    .line 70
    new-instance v2, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v2}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    iput-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->combinedMatrix:Lcom/badlogic/gdx/math/Matrix4;

    const/16 v2, 0x302

    .line 73
    iput v2, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->blendSrcFunc:I

    const/16 v3, 0x303

    .line 74
    iput v3, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->blendDstFunc:I

    .line 75
    iput v2, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->blendSrcFuncAlpha:I

    .line 76
    iput v3, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->blendDstFuncAlpha:I

    .line 82
    new-instance v2, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v3, v3, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->color:Lcom/badlogic/gdx/graphics/Color;

    .line 83
    sget v2, Lcom/badlogic/gdx/graphics/Color;->WHITE_FLOAT_BITS:F

    iput v2, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->colorPacked:F

    const/4 v2, 0x0

    .line 86
    iput v2, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->renderCalls:I

    .line 89
    iput v2, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->totalRenderCalls:I

    .line 92
    iput v2, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->maxTrianglesInBatch:I

    const/16 v3, 0x7fff

    if-gt p1, v3, :cond_2

    .line 129
    sget-object v3, Lcom/badlogic/gdx/graphics/Mesh$VertexDataType;->VertexArray:Lcom/badlogic/gdx/graphics/Mesh$VertexDataType;

    .line 130
    sget-object v4, Lcom/badlogic/gdx/Gdx;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    if-eqz v4, :cond_0

    .line 131
    sget-object v3, Lcom/badlogic/gdx/graphics/Mesh$VertexDataType;->VertexBufferObjectWithVAO:Lcom/badlogic/gdx/graphics/Mesh$VertexDataType;

    :cond_0
    move-object v5, v3

    .line 133
    new-instance v3, Lcom/badlogic/gdx/graphics/Mesh;

    const/4 v6, 0x0

    const/4 v4, 0x3

    mul-int/lit8 p2, p2, 0x3

    new-array v9, v4, [Lcom/badlogic/gdx/graphics/VertexAttribute;

    new-instance v4, Lcom/badlogic/gdx/graphics/VertexAttribute;

    const/4 v10, 0x1

    const/4 v7, 0x2

    const-string v8, "a_position"

    invoke-direct {v4, v10, v7, v8}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;)V

    aput-object v4, v9, v2

    new-instance v2, Lcom/badlogic/gdx/graphics/VertexAttribute;

    const/4 v4, 0x4

    const-string v8, "a_color"

    invoke-direct {v2, v4, v4, v8}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;)V

    aput-object v2, v9, v10

    new-instance v2, Lcom/badlogic/gdx/graphics/VertexAttribute;

    const/16 v4, 0x10

    const-string v8, "a_texCoord0"

    invoke-direct {v2, v4, v7, v8}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;)V

    aput-object v2, v9, v7

    move-object v4, v3

    move v7, p1

    move v8, p2

    invoke-direct/range {v4 .. v9}, Lcom/badlogic/gdx/graphics/Mesh;-><init>(Lcom/badlogic/gdx/graphics/Mesh$VertexDataType;ZII[Lcom/badlogic/gdx/graphics/VertexAttribute;)V

    iput-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    mul-int/lit8 p1, p1, 0x5

    .line 138
    new-array p1, p1, [F

    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertices:[F

    .line 139
    new-array p1, p2, [S

    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangles:[S

    if-nez p3, :cond_1

    .line 142
    invoke-static {}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->createDefaultShader()Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    move-result-object p1

    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->shader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    .line 143
    iput-boolean v10, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->ownsShader:Z

    goto :goto_0

    .line 145
    :cond_1
    iput-object p3, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->shader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    .line 147
    :goto_0
    sget-object p1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {p1}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result p1

    int-to-float p1, p1

    sget-object p2, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {p2}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {v1, v0, v0, p1, p2}, Lcom/badlogic/gdx/math/Matrix4;->setToOrtho2D(FFFF)Lcom/badlogic/gdx/math/Matrix4;

    return-void

    .line 127
    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Can\'t have more than 32767 vertices per batch: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public constructor <init>(ILcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V
    .locals 1

    mul-int/lit8 v0, p1, 0x2

    .line 111
    invoke-direct {p0, p1, v0, p2}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;-><init>(IILcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    return-void
.end method

.method private switchTexture(Lcom/badlogic/gdx/graphics/Texture;)V
    .locals 2

    .line 1314
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->flush()V

    .line 1315
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->lastTexture:Lcom/badlogic/gdx/graphics/Texture;

    .line 1316
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Texture;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    div-float v0, v1, v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->invTexWidth:F

    .line 1317
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Texture;->getHeight()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr v1, p1

    iput v1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->invTexHeight:F

    return-void
.end method


# virtual methods
.method public begin()V
    .locals 2

    .line 152
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->drawing:Z

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 153
    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->renderCalls:I

    .line 155
    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/GL20;->glDepthMask(Z)V

    .line 156
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->customShader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    if-eqz v0, :cond_0

    .line 157
    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->bind()V

    goto :goto_0

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->shader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->bind()V

    .line 160
    :goto_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->setupMatrices()V

    const/4 v0, 0x1

    .line 162
    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->drawing:Z

    return-void

    .line 152
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "PolygonSpriteBatch.end must be called before begin."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public disableBlending()V
    .locals 1

    .line 1226
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->flush()V

    const/4 v0, 0x1

    .line 1227
    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->blendingDisabled:Z

    return-void
.end method

.method public dispose()V
    .locals 1

    .line 1274
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Mesh;->dispose()V

    .line 1275
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->ownsShader:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->shader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->dispose()V

    :cond_0
    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/Texture;FF)V
    .locals 7

    .line 683
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

    invoke-virtual/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->draw(Lcom/badlogic/gdx/graphics/Texture;FFFF)V

    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/Texture;FFFF)V
    .locals 7

    .line 688
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->drawing:Z

    if-eqz v0, :cond_3

    .line 690
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangles:[S

    .line 691
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertices:[F

    .line 693
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->lastTexture:Lcom/badlogic/gdx/graphics/Texture;

    if-eq p1, v2, :cond_0

    .line 694
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->switchTexture(Lcom/badlogic/gdx/graphics/Texture;)V

    goto :goto_0

    .line 695
    :cond_0
    iget p1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangleIndex:I

    add-int/lit8 p1, p1, 0x6

    array-length v2, v0

    if-gt p1, v2, :cond_1

    iget p1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    add-int/lit8 p1, p1, 0x14

    array-length v2, v1

    if-le p1, v2, :cond_2

    .line 696
    :cond_1
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->flush()V

    .line 698
    :cond_2
    :goto_0
    iget p1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangleIndex:I

    .line 699
    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    div-int/lit8 v3, v2, 0x5

    add-int/lit8 v4, p1, 0x1

    int-to-short v5, v3

    .line 700
    aput-short v5, v0, p1

    add-int/lit8 p1, v4, 0x1

    add-int/lit8 v6, v3, 0x1

    int-to-short v6, v6

    .line 701
    aput-short v6, v0, v4

    add-int/lit8 v4, p1, 0x1

    add-int/lit8 v6, v3, 0x2

    int-to-short v6, v6

    .line 702
    aput-short v6, v0, p1

    add-int/lit8 p1, v4, 0x1

    .line 703
    aput-short v6, v0, v4

    add-int/lit8 v4, p1, 0x1

    add-int/lit8 v3, v3, 0x3

    int-to-short v3, v3

    .line 704
    aput-short v3, v0, p1

    add-int/lit8 p1, v4, 0x1

    .line 705
    aput-short v5, v0, v4

    .line 706
    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangleIndex:I

    add-float/2addr p4, p2

    add-float/2addr p5, p3

    .line 715
    iget p1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->colorPacked:F

    add-int/lit8 v0, v2, 0x1

    .line 717
    aput p2, v1, v2

    add-int/lit8 v2, v0, 0x1

    .line 718
    aput p3, v1, v0

    add-int/lit8 v0, v2, 0x1

    .line 719
    aput p1, v1, v2

    add-int/lit8 v2, v0, 0x1

    const/4 v3, 0x0

    .line 720
    aput v3, v1, v0

    add-int/lit8 v0, v2, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    .line 721
    aput v4, v1, v2

    add-int/lit8 v2, v0, 0x1

    .line 723
    aput p2, v1, v0

    add-int/lit8 p2, v2, 0x1

    .line 724
    aput p5, v1, v2

    add-int/lit8 v0, p2, 0x1

    .line 725
    aput p1, v1, p2

    add-int/lit8 p2, v0, 0x1

    .line 726
    aput v3, v1, v0

    add-int/lit8 v0, p2, 0x1

    .line 727
    aput v3, v1, p2

    add-int/lit8 p2, v0, 0x1

    .line 729
    aput p4, v1, v0

    add-int/lit8 v0, p2, 0x1

    .line 730
    aput p5, v1, p2

    add-int/lit8 p2, v0, 0x1

    .line 731
    aput p1, v1, v0

    add-int/lit8 p5, p2, 0x1

    .line 732
    aput v4, v1, p2

    add-int/lit8 p2, p5, 0x1

    .line 733
    aput v3, v1, p5

    add-int/lit8 p5, p2, 0x1

    .line 735
    aput p4, v1, p2

    add-int/lit8 p2, p5, 0x1

    .line 736
    aput p3, v1, p5

    add-int/lit8 p3, p2, 0x1

    .line 737
    aput p1, v1, p2

    add-int/lit8 p1, p3, 0x1

    .line 738
    aput v4, v1, p3

    add-int/lit8 p2, p1, 0x1

    .line 739
    aput v4, v1, p1

    .line 740
    iput p2, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    return-void

    .line 688
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "PolygonSpriteBatch.begin must be called before draw."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public draw(Lcom/badlogic/gdx/graphics/Texture;FFFFFFFF)V
    .locals 9

    move-object v0, p0

    .line 630
    iget-boolean v1, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->drawing:Z

    if-eqz v1, :cond_3

    .line 632
    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangles:[S

    .line 633
    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertices:[F

    .line 635
    iget-object v3, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->lastTexture:Lcom/badlogic/gdx/graphics/Texture;

    move-object v4, p1

    if-eq v4, v3, :cond_0

    .line 636
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->switchTexture(Lcom/badlogic/gdx/graphics/Texture;)V

    goto :goto_0

    .line 637
    :cond_0
    iget v3, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangleIndex:I

    add-int/lit8 v3, v3, 0x6

    array-length v4, v1

    if-gt v3, v4, :cond_1

    iget v3, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    add-int/lit8 v3, v3, 0x14

    array-length v4, v2

    if-le v3, v4, :cond_2

    .line 638
    :cond_1
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->flush()V

    .line 640
    :cond_2
    :goto_0
    iget v3, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangleIndex:I

    .line 641
    iget v4, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    div-int/lit8 v5, v4, 0x5

    add-int/lit8 v6, v3, 0x1

    int-to-short v7, v5

    .line 642
    aput-short v7, v1, v3

    add-int/lit8 v3, v6, 0x1

    add-int/lit8 v8, v5, 0x1

    int-to-short v8, v8

    .line 643
    aput-short v8, v1, v6

    add-int/lit8 v6, v3, 0x1

    add-int/lit8 v8, v5, 0x2

    int-to-short v8, v8

    .line 644
    aput-short v8, v1, v3

    add-int/lit8 v3, v6, 0x1

    .line 645
    aput-short v8, v1, v6

    add-int/lit8 v6, v3, 0x1

    add-int/lit8 v5, v5, 0x3

    int-to-short v5, v5

    .line 646
    aput-short v5, v1, v3

    add-int/lit8 v3, v6, 0x1

    .line 647
    aput-short v7, v1, v6

    .line 648
    iput v3, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangleIndex:I

    add-float v1, p2, p4

    add-float v3, p3, p5

    .line 653
    iget v5, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->colorPacked:F

    add-int/lit8 v6, v4, 0x1

    .line 655
    aput p2, v2, v4

    add-int/lit8 v4, v6, 0x1

    .line 656
    aput p3, v2, v6

    add-int/lit8 v6, v4, 0x1

    .line 657
    aput v5, v2, v4

    add-int/lit8 v4, v6, 0x1

    .line 658
    aput p6, v2, v6

    add-int/lit8 v6, v4, 0x1

    .line 659
    aput p7, v2, v4

    add-int/lit8 v4, v6, 0x1

    .line 661
    aput p2, v2, v6

    add-int/lit8 v6, v4, 0x1

    .line 662
    aput v3, v2, v4

    add-int/lit8 v4, v6, 0x1

    .line 663
    aput v5, v2, v6

    add-int/lit8 v6, v4, 0x1

    .line 664
    aput p6, v2, v4

    add-int/lit8 v4, v6, 0x1

    .line 665
    aput p9, v2, v6

    add-int/lit8 v6, v4, 0x1

    .line 667
    aput v1, v2, v4

    add-int/lit8 v4, v6, 0x1

    .line 668
    aput v3, v2, v6

    add-int/lit8 v3, v4, 0x1

    .line 669
    aput v5, v2, v4

    add-int/lit8 v4, v3, 0x1

    .line 670
    aput p8, v2, v3

    add-int/lit8 v3, v4, 0x1

    .line 671
    aput p9, v2, v4

    add-int/lit8 v4, v3, 0x1

    .line 673
    aput v1, v2, v3

    add-int/lit8 v1, v4, 0x1

    .line 674
    aput p3, v2, v4

    add-int/lit8 v3, v1, 0x1

    .line 675
    aput v5, v2, v1

    add-int/lit8 v1, v3, 0x1

    .line 676
    aput p8, v2, v3

    add-int/lit8 v3, v1, 0x1

    .line 677
    aput p7, v2, v1

    .line 678
    iput v3, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    return-void

    .line 630
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "PolygonSpriteBatch.begin must be called before draw."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public draw(Lcom/badlogic/gdx/graphics/Texture;FFFFFFFFFIIIIZZ)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p4

    move/from16 v2, p5

    move/from16 v3, p11

    move/from16 v4, p12

    .line 362
    iget-boolean v5, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->drawing:Z

    if-eqz v5, :cond_8

    .line 364
    iget-object v5, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangles:[S

    .line 365
    iget-object v6, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertices:[F

    .line 367
    iget-object v7, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->lastTexture:Lcom/badlogic/gdx/graphics/Texture;

    move-object/from16 v8, p1

    if-eq v8, v7, :cond_0

    .line 368
    invoke-direct/range {p0 .. p1}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->switchTexture(Lcom/badlogic/gdx/graphics/Texture;)V

    goto :goto_0

    .line 369
    :cond_0
    iget v7, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangleIndex:I

    add-int/lit8 v7, v7, 0x6

    array-length v8, v5

    if-gt v7, v8, :cond_1

    iget v7, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    add-int/lit8 v7, v7, 0x14

    array-length v8, v6

    if-le v7, v8, :cond_2

    .line 370
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->flush()V

    .line 372
    :cond_2
    :goto_0
    iget v7, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangleIndex:I

    .line 373
    iget v8, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    div-int/lit8 v8, v8, 0x5

    add-int/lit8 v9, v7, 0x1

    int-to-short v10, v8

    .line 374
    aput-short v10, v5, v7

    add-int/lit8 v7, v9, 0x1

    add-int/lit8 v11, v8, 0x1

    int-to-short v11, v11

    .line 375
    aput-short v11, v5, v9

    add-int/lit8 v9, v7, 0x1

    add-int/lit8 v11, v8, 0x2

    int-to-short v11, v11

    .line 376
    aput-short v11, v5, v7

    add-int/lit8 v7, v9, 0x1

    .line 377
    aput-short v11, v5, v9

    add-int/lit8 v9, v7, 0x1

    add-int/lit8 v8, v8, 0x3

    int-to-short v8, v8

    .line 378
    aput-short v8, v5, v7

    add-int/lit8 v7, v9, 0x1

    .line 379
    aput-short v10, v5, v9

    .line 380
    iput v7, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangleIndex:I

    add-float v5, p2, v1

    add-float v7, p3, v2

    neg-float v8, v1

    neg-float v9, v2

    sub-float v1, p6, v1

    sub-float v2, p7, v2

    const/high16 v10, 0x3f800000    # 1.0f

    cmpl-float v11, p8, v10

    if-nez v11, :cond_3

    cmpl-float v10, p9, v10

    if-eqz v10, :cond_4

    :cond_3
    mul-float v8, v8, p8

    mul-float v9, v9, p9

    mul-float v1, v1, p8

    mul-float v2, v2, p9

    :cond_4
    const/4 v10, 0x0

    cmpl-float v10, p10, v10

    if-eqz v10, :cond_5

    .line 419
    invoke-static/range {p10 .. p10}, Lcom/badlogic/gdx/math/MathUtils;->cosDeg(F)F

    move-result v10

    .line 420
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

    move/from16 v17, v2

    move v2, v1

    move v1, v10

    move v10, v9

    move/from16 v9, v17

    goto :goto_1

    :cond_5
    move v12, v8

    move v13, v12

    move v10, v9

    move v11, v10

    move v8, v2

    move v9, v8

    move v2, v1

    :goto_1
    add-float/2addr v13, v5

    add-float/2addr v10, v7

    add-float/2addr v12, v5

    add-float/2addr v8, v7

    add-float/2addr v1, v5

    add-float/2addr v9, v7

    add-float/2addr v2, v5

    add-float/2addr v11, v7

    int-to-float v5, v3

    .line 456
    iget v7, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->invTexWidth:F

    mul-float v5, v5, v7

    add-int v14, v4, p14

    int-to-float v14, v14

    .line 457
    iget v15, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->invTexHeight:F

    mul-float v14, v14, v15

    add-int v3, v3, p13

    int-to-float v3, v3

    mul-float v3, v3, v7

    int-to-float v4, v4

    mul-float v4, v4, v15

    if-eqz p15, :cond_6

    move/from16 v17, v5

    move v5, v3

    move/from16 v3, v17

    :cond_6
    if-eqz p16, :cond_7

    move/from16 v17, v14

    move v14, v4

    move/from16 v4, v17

    .line 473
    :cond_7
    iget v7, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->colorPacked:F

    .line 474
    iget v15, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    add-int/lit8 v16, v15, 0x1

    .line 475
    aput v13, v6, v15

    add-int/lit8 v13, v16, 0x1

    .line 476
    aput v10, v6, v16

    add-int/lit8 v10, v13, 0x1

    .line 477
    aput v7, v6, v13

    add-int/lit8 v13, v10, 0x1

    .line 478
    aput v5, v6, v10

    add-int/lit8 v10, v13, 0x1

    .line 479
    aput v14, v6, v13

    add-int/lit8 v13, v10, 0x1

    .line 481
    aput v12, v6, v10

    add-int/lit8 v10, v13, 0x1

    .line 482
    aput v8, v6, v13

    add-int/lit8 v8, v10, 0x1

    .line 483
    aput v7, v6, v10

    add-int/lit8 v10, v8, 0x1

    .line 484
    aput v5, v6, v8

    add-int/lit8 v5, v10, 0x1

    .line 485
    aput v4, v6, v10

    add-int/lit8 v8, v5, 0x1

    .line 487
    aput v1, v6, v5

    add-int/lit8 v1, v8, 0x1

    .line 488
    aput v9, v6, v8

    add-int/lit8 v5, v1, 0x1

    .line 489
    aput v7, v6, v1

    add-int/lit8 v1, v5, 0x1

    .line 490
    aput v3, v6, v5

    add-int/lit8 v5, v1, 0x1

    .line 491
    aput v4, v6, v1

    add-int/lit8 v1, v5, 0x1

    .line 493
    aput v2, v6, v5

    add-int/lit8 v2, v1, 0x1

    .line 494
    aput v11, v6, v1

    add-int/lit8 v1, v2, 0x1

    .line 495
    aput v7, v6, v2

    add-int/lit8 v2, v1, 0x1

    .line 496
    aput v3, v6, v1

    add-int/lit8 v1, v2, 0x1

    .line 497
    aput v14, v6, v2

    .line 498
    iput v1, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    return-void

    .line 362
    :cond_8
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "PolygonSpriteBatch.begin must be called before draw."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public draw(Lcom/badlogic/gdx/graphics/Texture;FFFFIIIIZZ)V
    .locals 12

    move-object v0, p0

    move/from16 v1, p6

    move/from16 v2, p7

    .line 504
    iget-boolean v3, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->drawing:Z

    if-eqz v3, :cond_5

    .line 506
    iget-object v3, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangles:[S

    .line 507
    iget-object v4, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertices:[F

    .line 509
    iget-object v5, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->lastTexture:Lcom/badlogic/gdx/graphics/Texture;

    move-object v6, p1

    if-eq v6, v5, :cond_0

    .line 510
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->switchTexture(Lcom/badlogic/gdx/graphics/Texture;)V

    goto :goto_0

    .line 511
    :cond_0
    iget v5, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangleIndex:I

    add-int/lit8 v5, v5, 0x6

    array-length v6, v3

    if-gt v5, v6, :cond_1

    iget v5, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    add-int/lit8 v5, v5, 0x14

    array-length v6, v4

    if-le v5, v6, :cond_2

    .line 512
    :cond_1
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->flush()V

    .line 514
    :cond_2
    :goto_0
    iget v5, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangleIndex:I

    .line 515
    iget v6, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    div-int/lit8 v7, v6, 0x5

    add-int/lit8 v8, v5, 0x1

    int-to-short v9, v7

    .line 516
    aput-short v9, v3, v5

    add-int/lit8 v5, v8, 0x1

    add-int/lit8 v10, v7, 0x1

    int-to-short v10, v10

    .line 517
    aput-short v10, v3, v8

    add-int/lit8 v8, v5, 0x1

    add-int/lit8 v10, v7, 0x2

    int-to-short v10, v10

    .line 518
    aput-short v10, v3, v5

    add-int/lit8 v5, v8, 0x1

    .line 519
    aput-short v10, v3, v8

    add-int/lit8 v8, v5, 0x1

    add-int/lit8 v7, v7, 0x3

    int-to-short v7, v7

    .line 520
    aput-short v7, v3, v5

    add-int/lit8 v5, v8, 0x1

    .line 521
    aput-short v9, v3, v8

    .line 522
    iput v5, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangleIndex:I

    int-to-float v3, v1

    .line 524
    iget v5, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->invTexWidth:F

    mul-float v3, v3, v5

    add-int v7, v2, p9

    int-to-float v7, v7

    .line 525
    iget v8, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->invTexHeight:F

    mul-float v7, v7, v8

    add-int v1, v1, p8

    int-to-float v1, v1

    mul-float v1, v1, v5

    int-to-float v2, v2

    mul-float v2, v2, v8

    add-float v5, p2, p4

    add-float v8, p3, p5

    if-eqz p10, :cond_3

    move v11, v3

    move v3, v1

    move v1, v11

    :cond_3
    if-eqz p11, :cond_4

    move v11, v7

    move v7, v2

    move v2, v11

    .line 543
    :cond_4
    iget v9, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->colorPacked:F

    add-int/lit8 v10, v6, 0x1

    .line 545
    aput p2, v4, v6

    add-int/lit8 v6, v10, 0x1

    .line 546
    aput p3, v4, v10

    add-int/lit8 v10, v6, 0x1

    .line 547
    aput v9, v4, v6

    add-int/lit8 v6, v10, 0x1

    .line 548
    aput v3, v4, v10

    add-int/lit8 v10, v6, 0x1

    .line 549
    aput v7, v4, v6

    add-int/lit8 v6, v10, 0x1

    .line 551
    aput p2, v4, v10

    add-int/lit8 v10, v6, 0x1

    .line 552
    aput v8, v4, v6

    add-int/lit8 v6, v10, 0x1

    .line 553
    aput v9, v4, v10

    add-int/lit8 v10, v6, 0x1

    .line 554
    aput v3, v4, v6

    add-int/lit8 v3, v10, 0x1

    .line 555
    aput v2, v4, v10

    add-int/lit8 v6, v3, 0x1

    .line 557
    aput v5, v4, v3

    add-int/lit8 v3, v6, 0x1

    .line 558
    aput v8, v4, v6

    add-int/lit8 v6, v3, 0x1

    .line 559
    aput v9, v4, v3

    add-int/lit8 v3, v6, 0x1

    .line 560
    aput v1, v4, v6

    add-int/lit8 v6, v3, 0x1

    .line 561
    aput v2, v4, v3

    add-int/lit8 v2, v6, 0x1

    .line 563
    aput v5, v4, v6

    add-int/lit8 v3, v2, 0x1

    .line 564
    aput p3, v4, v2

    add-int/lit8 v2, v3, 0x1

    .line 565
    aput v9, v4, v3

    add-int/lit8 v3, v2, 0x1

    .line 566
    aput v1, v4, v2

    add-int/lit8 v1, v3, 0x1

    .line 567
    aput v7, v4, v3

    .line 568
    iput v1, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    return-void

    .line 504
    :cond_5
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "PolygonSpriteBatch.begin must be called before draw."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public draw(Lcom/badlogic/gdx/graphics/Texture;FFIIII)V
    .locals 7

    .line 573
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->drawing:Z

    if-eqz v0, :cond_3

    .line 575
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangles:[S

    .line 576
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertices:[F

    .line 578
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->lastTexture:Lcom/badlogic/gdx/graphics/Texture;

    if-eq p1, v2, :cond_0

    .line 579
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->switchTexture(Lcom/badlogic/gdx/graphics/Texture;)V

    goto :goto_0

    .line 580
    :cond_0
    iget p1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangleIndex:I

    add-int/lit8 p1, p1, 0x6

    array-length v2, v0

    if-gt p1, v2, :cond_1

    iget p1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    add-int/lit8 p1, p1, 0x14

    array-length v2, v1

    if-le p1, v2, :cond_2

    .line 581
    :cond_1
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->flush()V

    .line 583
    :cond_2
    :goto_0
    iget p1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangleIndex:I

    .line 584
    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    div-int/lit8 v3, v2, 0x5

    add-int/lit8 v4, p1, 0x1

    int-to-short v5, v3

    .line 585
    aput-short v5, v0, p1

    add-int/lit8 p1, v4, 0x1

    add-int/lit8 v6, v3, 0x1

    int-to-short v6, v6

    .line 586
    aput-short v6, v0, v4

    add-int/lit8 v4, p1, 0x1

    add-int/lit8 v6, v3, 0x2

    int-to-short v6, v6

    .line 587
    aput-short v6, v0, p1

    add-int/lit8 p1, v4, 0x1

    .line 588
    aput-short v6, v0, v4

    add-int/lit8 v4, p1, 0x1

    add-int/lit8 v3, v3, 0x3

    int-to-short v3, v3

    .line 589
    aput-short v3, v0, p1

    add-int/lit8 p1, v4, 0x1

    .line 590
    aput-short v5, v0, v4

    .line 591
    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangleIndex:I

    int-to-float p1, p4

    .line 593
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->invTexWidth:F

    mul-float p1, p1, v0

    add-int v3, p5, p7

    int-to-float v3, v3

    .line 594
    iget v4, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->invTexHeight:F

    mul-float v3, v3, v4

    add-int/2addr p4, p6

    int-to-float p4, p4

    mul-float p4, p4, v0

    int-to-float p5, p5

    mul-float p5, p5, v4

    int-to-float p6, p6

    add-float/2addr p6, p2

    int-to-float p7, p7

    add-float/2addr p7, p3

    .line 600
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->colorPacked:F

    add-int/lit8 v4, v2, 0x1

    .line 602
    aput p2, v1, v2

    add-int/lit8 v2, v4, 0x1

    .line 603
    aput p3, v1, v4

    add-int/lit8 v4, v2, 0x1

    .line 604
    aput v0, v1, v2

    add-int/lit8 v2, v4, 0x1

    .line 605
    aput p1, v1, v4

    add-int/lit8 v4, v2, 0x1

    .line 606
    aput v3, v1, v2

    add-int/lit8 v2, v4, 0x1

    .line 608
    aput p2, v1, v4

    add-int/lit8 p2, v2, 0x1

    .line 609
    aput p7, v1, v2

    add-int/lit8 v2, p2, 0x1

    .line 610
    aput v0, v1, p2

    add-int/lit8 p2, v2, 0x1

    .line 611
    aput p1, v1, v2

    add-int/lit8 p1, p2, 0x1

    .line 612
    aput p5, v1, p2

    add-int/lit8 p2, p1, 0x1

    .line 614
    aput p6, v1, p1

    add-int/lit8 p1, p2, 0x1

    .line 615
    aput p7, v1, p2

    add-int/lit8 p2, p1, 0x1

    .line 616
    aput v0, v1, p1

    add-int/lit8 p1, p2, 0x1

    .line 617
    aput p4, v1, p2

    add-int/lit8 p2, p1, 0x1

    .line 618
    aput p5, v1, p1

    add-int/lit8 p1, p2, 0x1

    .line 620
    aput p6, v1, p2

    add-int/lit8 p2, p1, 0x1

    .line 621
    aput p3, v1, p1

    add-int/lit8 p1, p2, 0x1

    .line 622
    aput v0, v1, p2

    add-int/lit8 p2, p1, 0x1

    .line 623
    aput p4, v1, p1

    add-int/lit8 p1, p2, 0x1

    .line 624
    aput v3, v1, p2

    .line 625
    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    return-void

    .line 573
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "PolygonSpriteBatch.begin must be called before draw."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public draw(Lcom/badlogic/gdx/graphics/Texture;[FII)V
    .locals 8

    .line 745
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->drawing:Z

    if-eqz v0, :cond_5

    .line 747
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangles:[S

    .line 748
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertices:[F

    .line 750
    div-int/lit8 v2, p4, 0x14

    mul-int/lit8 v2, v2, 0x6

    .line 752
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->lastTexture:Lcom/badlogic/gdx/graphics/Texture;

    if-eq p1, v3, :cond_0

    .line 753
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->switchTexture(Lcom/badlogic/gdx/graphics/Texture;)V

    .line 754
    array-length p1, v1

    array-length v2, v1

    rem-int/lit8 v2, v2, 0x14

    sub-int/2addr p1, v2

    invoke-static {p4, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    array-length v2, v0

    div-int/lit8 v2, v2, 0x6

    mul-int/lit8 v2, v2, 0x14

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 755
    div-int/lit8 v2, p1, 0x14

    :goto_0
    mul-int/lit8 v2, v2, 0x6

    goto :goto_2

    .line 756
    :cond_0
    iget p1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangleIndex:I

    add-int/2addr p1, v2

    array-length v3, v0

    if-gt p1, v3, :cond_2

    iget p1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    add-int/2addr p1, p4

    array-length v3, v1

    if-le p1, v3, :cond_1

    goto :goto_1

    :cond_1
    move p1, p4

    goto :goto_2

    .line 757
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->flush()V

    .line 758
    array-length p1, v1

    array-length v2, v1

    rem-int/lit8 v2, v2, 0x14

    sub-int/2addr p1, v2

    invoke-static {p4, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    array-length v2, v0

    div-int/lit8 v2, v2, 0x6

    mul-int/lit8 v2, v2, 0x14

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 759
    div-int/lit8 v2, p1, 0x14

    goto :goto_0

    .line 763
    :goto_2
    iget v3, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    .line 764
    div-int/lit8 v4, v3, 0x5

    int-to-short v4, v4

    .line 765
    iget v5, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangleIndex:I

    add-int/2addr v2, v5

    :goto_3
    if-ge v5, v2, :cond_3

    .line 767
    aput-short v4, v0, v5

    add-int/lit8 v6, v5, 0x1

    add-int/lit8 v7, v4, 0x1

    int-to-short v7, v7

    .line 768
    aput-short v7, v0, v6

    add-int/lit8 v6, v5, 0x2

    add-int/lit8 v7, v4, 0x2

    int-to-short v7, v7

    .line 769
    aput-short v7, v0, v6

    add-int/lit8 v6, v5, 0x3

    .line 770
    aput-short v7, v0, v6

    add-int/lit8 v6, v5, 0x4

    add-int/lit8 v7, v4, 0x3

    int-to-short v7, v7

    .line 771
    aput-short v7, v0, v6

    add-int/lit8 v6, v5, 0x5

    .line 772
    aput-short v4, v0, v6

    add-int/lit8 v5, v5, 0x6

    add-int/lit8 v4, v4, 0x4

    int-to-short v4, v4

    goto :goto_3

    .line 776
    :cond_3
    :goto_4
    invoke-static {p2, p3, v1, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v3, p1

    .line 777
    iput v3, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    .line 778
    iput v5, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangleIndex:I

    sub-int/2addr p4, p1

    if-nez p4, :cond_4

    return-void

    :cond_4
    add-int/2addr p3, p1

    .line 782
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->flush()V

    const/4 v3, 0x0

    if-le p1, p4, :cond_3

    .line 785
    array-length p1, v0

    div-int/lit8 p1, p1, 0x6

    mul-int/lit8 p1, p1, 0x14

    invoke-static {p4, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 786
    div-int/lit8 v2, p1, 0x14

    mul-int/lit8 v5, v2, 0x6

    goto :goto_4

    .line 745
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "PolygonSpriteBatch.begin must be called before draw."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_6

    :goto_5
    throw p1

    :goto_6
    goto :goto_5
.end method

.method public draw(Lcom/badlogic/gdx/graphics/Texture;[FII[SII)V
    .locals 6

    .line 337
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->drawing:Z

    if-eqz v0, :cond_4

    .line 339
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangles:[S

    .line 340
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertices:[F

    .line 342
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->lastTexture:Lcom/badlogic/gdx/graphics/Texture;

    if-eq p1, v2, :cond_0

    .line 343
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->switchTexture(Lcom/badlogic/gdx/graphics/Texture;)V

    goto :goto_0

    .line 344
    :cond_0
    iget p1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangleIndex:I

    add-int/2addr p1, p7

    array-length v2, v0

    if-gt p1, v2, :cond_1

    iget p1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    add-int/2addr p1, p4

    array-length v2, v1

    if-le p1, v2, :cond_2

    .line 345
    :cond_1
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->flush()V

    .line 347
    :cond_2
    :goto_0
    iget p1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangleIndex:I

    .line 348
    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    .line 349
    div-int/lit8 v3, v2, 0x5

    add-int/2addr p7, p6

    :goto_1
    if-ge p6, p7, :cond_3

    add-int/lit8 v4, p1, 0x1

    .line 352
    aget-short v5, p5, p6

    add-int/2addr v5, v3

    int-to-short v5, v5

    aput-short v5, v0, p1

    add-int/lit8 p6, p6, 0x1

    move p1, v4

    goto :goto_1

    .line 353
    :cond_3
    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangleIndex:I

    .line 355
    invoke-static {p2, p3, v1, v2, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 356
    iget p1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    add-int/2addr p1, p4

    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    return-void

    .line 337
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "PolygonSpriteBatch.begin must be called before draw."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;FF)V
    .locals 12

    .line 207
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->drawing:Z

    if-eqz v0, :cond_5

    .line 209
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangles:[S

    .line 210
    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;->triangles:[S

    .line 211
    array-length v2, v1

    .line 212
    iget-object v3, p1, Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;->vertices:[F

    .line 213
    array-length v4, v3

    .line 215
    iget-object v5, p1, Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iget-object v5, v5, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->texture:Lcom/badlogic/gdx/graphics/Texture;

    .line 216
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->lastTexture:Lcom/badlogic/gdx/graphics/Texture;

    if-eq v5, v6, :cond_0

    .line 217
    invoke-direct {p0, v5}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->switchTexture(Lcom/badlogic/gdx/graphics/Texture;)V

    goto :goto_0

    .line 218
    :cond_0
    iget v5, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangleIndex:I

    add-int/2addr v5, v2

    array-length v6, v0

    if-gt v5, v6, :cond_1

    iget v5, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    mul-int/lit8 v6, v4, 0x5

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertices:[F

    array-length v6, v6

    if-le v5, v6, :cond_2

    .line 219
    :cond_1
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->flush()V

    .line 221
    :cond_2
    :goto_0
    iget v5, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangleIndex:I

    .line 222
    iget v6, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    .line 223
    div-int/lit8 v7, v6, 0x5

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v2, :cond_3

    add-int/lit8 v10, v5, 0x1

    .line 226
    aget-short v11, v1, v9

    add-int/2addr v11, v7

    int-to-short v11, v11

    aput-short v11, v0, v5

    add-int/lit8 v9, v9, 0x1

    move v5, v10

    goto :goto_1

    .line 227
    :cond_3
    iput v5, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangleIndex:I

    .line 229
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertices:[F

    .line 230
    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->colorPacked:F

    .line 231
    iget-object p1, p1, Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;->textureCoords:[F

    :goto_2
    if-ge v8, v4, :cond_4

    add-int/lit8 v2, v6, 0x1

    .line 234
    aget v5, v3, v8

    add-float/2addr v5, p2

    aput v5, v0, v6

    add-int/lit8 v5, v2, 0x1

    add-int/lit8 v6, v8, 0x1

    .line 235
    aget v7, v3, v6

    add-float/2addr v7, p3

    aput v7, v0, v2

    add-int/lit8 v2, v5, 0x1

    .line 236
    aput v1, v0, v5

    add-int/lit8 v5, v2, 0x1

    .line 237
    aget v7, p1, v8

    aput v7, v0, v2

    add-int/lit8 v2, v5, 0x1

    .line 238
    aget v6, p1, v6

    aput v6, v0, v5

    add-int/lit8 v8, v8, 0x2

    move v6, v2

    goto :goto_2

    .line 240
    :cond_4
    iput v6, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    return-void

    .line 207
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "PolygonSpriteBatch.begin must be called before draw."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;FFFF)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    .line 245
    iget-boolean v2, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->drawing:Z

    if-eqz v2, :cond_5

    .line 247
    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangles:[S

    .line 248
    iget-object v3, v1, Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;->triangles:[S

    .line 249
    array-length v4, v3

    .line 250
    iget-object v5, v1, Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;->vertices:[F

    .line 251
    array-length v6, v5

    .line 252
    iget-object v7, v1, Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 254
    iget-object v8, v7, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->texture:Lcom/badlogic/gdx/graphics/Texture;

    .line 255
    iget-object v9, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->lastTexture:Lcom/badlogic/gdx/graphics/Texture;

    if-eq v8, v9, :cond_0

    .line 256
    invoke-direct {p0, v8}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->switchTexture(Lcom/badlogic/gdx/graphics/Texture;)V

    goto :goto_0

    .line 257
    :cond_0
    iget v8, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangleIndex:I

    add-int/2addr v8, v4

    array-length v4, v2

    if-gt v8, v4, :cond_1

    iget v4, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    mul-int/lit8 v8, v6, 0x5

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v4, v8

    iget-object v8, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertices:[F

    array-length v8, v8

    if-le v4, v8, :cond_2

    .line 258
    :cond_1
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->flush()V

    .line 260
    :cond_2
    :goto_0
    iget v4, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangleIndex:I

    .line 261
    iget v8, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    .line 262
    div-int/lit8 v9, v8, 0x5

    .line 264
    array-length v10, v3

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_1
    if-ge v12, v10, :cond_3

    add-int/lit8 v13, v4, 0x1

    .line 265
    aget-short v14, v3, v12

    add-int/2addr v14, v9

    int-to-short v14, v14

    aput-short v14, v2, v4

    add-int/lit8 v12, v12, 0x1

    move v4, v13

    goto :goto_1

    .line 266
    :cond_3
    iput v4, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangleIndex:I

    .line 268
    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertices:[F

    .line 269
    iget v3, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->colorPacked:F

    .line 270
    iget-object v1, v1, Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;->textureCoords:[F

    .line 271
    iget v4, v7, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->regionWidth:I

    int-to-float v4, v4

    div-float v4, p4, v4

    .line 272
    iget v7, v7, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->regionHeight:I

    int-to-float v7, v7

    div-float v7, p5, v7

    :goto_2
    if-ge v11, v6, :cond_4

    add-int/lit8 v9, v8, 0x1

    .line 275
    aget v10, v5, v11

    mul-float v10, v10, v4

    add-float v10, v10, p2

    aput v10, v2, v8

    add-int/lit8 v8, v9, 0x1

    add-int/lit8 v10, v11, 0x1

    .line 276
    aget v12, v5, v10

    mul-float v12, v12, v7

    add-float v12, v12, p3

    aput v12, v2, v9

    add-int/lit8 v9, v8, 0x1

    .line 277
    aput v3, v2, v8

    add-int/lit8 v8, v9, 0x1

    .line 278
    aget v12, v1, v11

    aput v12, v2, v9

    add-int/lit8 v9, v8, 0x1

    .line 279
    aget v10, v1, v10

    aput v10, v2, v8

    add-int/lit8 v11, v11, 0x2

    move v8, v9

    goto :goto_2

    .line 281
    :cond_4
    iput v8, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    return-void

    .line 245
    :cond_5
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "PolygonSpriteBatch.begin must be called before draw."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw v1

    :goto_4
    goto :goto_3
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;FFFFFFFFF)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 287
    iget-boolean v2, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->drawing:Z

    if-eqz v2, :cond_5

    .line 289
    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangles:[S

    .line 290
    iget-object v3, v1, Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;->triangles:[S

    .line 291
    array-length v4, v3

    .line 292
    iget-object v5, v1, Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;->vertices:[F

    .line 293
    array-length v6, v5

    .line 294
    iget-object v7, v1, Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 296
    iget-object v8, v7, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->texture:Lcom/badlogic/gdx/graphics/Texture;

    .line 297
    iget-object v9, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->lastTexture:Lcom/badlogic/gdx/graphics/Texture;

    if-eq v8, v9, :cond_0

    .line 298
    invoke-direct {v0, v8}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->switchTexture(Lcom/badlogic/gdx/graphics/Texture;)V

    goto :goto_0

    .line 299
    :cond_0
    iget v8, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangleIndex:I

    add-int/2addr v8, v4

    array-length v9, v2

    if-gt v8, v9, :cond_1

    iget v8, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    mul-int/lit8 v9, v6, 0x5

    div-int/lit8 v9, v9, 0x2

    add-int/2addr v8, v9

    iget-object v9, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertices:[F

    array-length v9, v9

    if-le v8, v9, :cond_2

    .line 300
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->flush()V

    .line 302
    :cond_2
    :goto_0
    iget v8, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangleIndex:I

    .line 303
    iget v9, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    .line 304
    div-int/lit8 v10, v9, 0x5

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_1
    if-ge v12, v4, :cond_3

    add-int/lit8 v13, v8, 0x1

    .line 307
    aget-short v14, v3, v12

    add-int/2addr v14, v10

    int-to-short v14, v14

    aput-short v14, v2, v8

    add-int/lit8 v12, v12, 0x1

    move v8, v13

    goto :goto_1

    .line 308
    :cond_3
    iput v8, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangleIndex:I

    .line 310
    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertices:[F

    .line 311
    iget v3, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->colorPacked:F

    .line 312
    iget-object v1, v1, Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;->textureCoords:[F

    add-float v4, p2, p4

    add-float v8, p3, p5

    .line 316
    iget v10, v7, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->regionWidth:I

    int-to-float v10, v10

    div-float v10, p6, v10

    .line 317
    iget v7, v7, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->regionHeight:I

    int-to-float v7, v7

    div-float v7, p7, v7

    .line 318
    invoke-static/range {p10 .. p10}, Lcom/badlogic/gdx/math/MathUtils;->cosDeg(F)F

    move-result v12

    .line 319
    invoke-static/range {p10 .. p10}, Lcom/badlogic/gdx/math/MathUtils;->sinDeg(F)F

    move-result v13

    :goto_2
    if-ge v11, v6, :cond_4

    .line 323
    aget v14, v5, v11

    mul-float v14, v14, v10

    sub-float v14, v14, p4

    mul-float v14, v14, p8

    add-int/lit8 v15, v11, 0x1

    .line 324
    aget v16, v5, v15

    mul-float v16, v16, v7

    sub-float v16, v16, p5

    mul-float v16, v16, p9

    add-int/lit8 v17, v9, 0x1

    mul-float v18, v12, v14

    mul-float v19, v13, v16

    sub-float v18, v18, v19

    add-float v18, v18, v4

    .line 325
    aput v18, v2, v9

    add-int/lit8 v9, v17, 0x1

    mul-float v14, v14, v13

    mul-float v16, v16, v12

    add-float v14, v14, v16

    add-float/2addr v14, v8

    .line 326
    aput v14, v2, v17

    add-int/lit8 v14, v9, 0x1

    .line 327
    aput v3, v2, v9

    add-int/lit8 v9, v14, 0x1

    .line 328
    aget v16, v1, v11

    aput v16, v2, v14

    add-int/lit8 v14, v9, 0x1

    .line 329
    aget v15, v1, v15

    aput v15, v2, v9

    add-int/lit8 v11, v11, 0x2

    move v9, v14

    goto :goto_2

    .line 331
    :cond_4
    iput v9, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    return-void

    .line 287
    :cond_5
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "PolygonSpriteBatch.begin must be called before draw."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw v1

    :goto_4
    goto :goto_3
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FF)V
    .locals 7

    .line 793
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

    invoke-virtual/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V
    .locals 7

    .line 798
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->drawing:Z

    if-eqz v0, :cond_3

    .line 800
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangles:[S

    .line 801
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertices:[F

    .line 803
    iget-object v2, p1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->texture:Lcom/badlogic/gdx/graphics/Texture;

    .line 804
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->lastTexture:Lcom/badlogic/gdx/graphics/Texture;

    if-eq v2, v3, :cond_0

    .line 805
    invoke-direct {p0, v2}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->switchTexture(Lcom/badlogic/gdx/graphics/Texture;)V

    goto :goto_0

    .line 806
    :cond_0
    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangleIndex:I

    add-int/lit8 v2, v2, 0x6

    array-length v3, v0

    if-gt v2, v3, :cond_1

    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    add-int/lit8 v2, v2, 0x14

    array-length v3, v1

    if-le v2, v3, :cond_2

    .line 807
    :cond_1
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->flush()V

    .line 809
    :cond_2
    :goto_0
    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangleIndex:I

    .line 810
    iget v3, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    div-int/lit8 v3, v3, 0x5

    add-int/lit8 v4, v2, 0x1

    int-to-short v5, v3

    .line 811
    aput-short v5, v0, v2

    add-int/lit8 v2, v4, 0x1

    add-int/lit8 v6, v3, 0x1

    int-to-short v6, v6

    .line 812
    aput-short v6, v0, v4

    add-int/lit8 v4, v2, 0x1

    add-int/lit8 v6, v3, 0x2

    int-to-short v6, v6

    .line 813
    aput-short v6, v0, v2

    add-int/lit8 v2, v4, 0x1

    .line 814
    aput-short v6, v0, v4

    add-int/lit8 v4, v2, 0x1

    add-int/lit8 v3, v3, 0x3

    int-to-short v3, v3

    .line 815
    aput-short v3, v0, v2

    add-int/lit8 v2, v4, 0x1

    .line 816
    aput-short v5, v0, v4

    .line 817
    iput v2, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangleIndex:I

    add-float/2addr p4, p2

    add-float/2addr p5, p3

    .line 821
    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u:F

    .line 822
    iget v2, p1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v2:F

    .line 823
    iget v3, p1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u2:F

    .line 824
    iget p1, p1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v:F

    .line 826
    iget v4, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->colorPacked:F

    .line 827
    iget v5, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    add-int/lit8 v6, v5, 0x1

    .line 828
    aput p2, v1, v5

    add-int/lit8 v5, v6, 0x1

    .line 829
    aput p3, v1, v6

    add-int/lit8 v6, v5, 0x1

    .line 830
    aput v4, v1, v5

    add-int/lit8 v5, v6, 0x1

    .line 831
    aput v0, v1, v6

    add-int/lit8 v6, v5, 0x1

    .line 832
    aput v2, v1, v5

    add-int/lit8 v5, v6, 0x1

    .line 834
    aput p2, v1, v6

    add-int/lit8 p2, v5, 0x1

    .line 835
    aput p5, v1, v5

    add-int/lit8 v5, p2, 0x1

    .line 836
    aput v4, v1, p2

    add-int/lit8 p2, v5, 0x1

    .line 837
    aput v0, v1, v5

    add-int/lit8 v0, p2, 0x1

    .line 838
    aput p1, v1, p2

    add-int/lit8 p2, v0, 0x1

    .line 840
    aput p4, v1, v0

    add-int/lit8 v0, p2, 0x1

    .line 841
    aput p5, v1, p2

    add-int/lit8 p2, v0, 0x1

    .line 842
    aput v4, v1, v0

    add-int/lit8 p5, p2, 0x1

    .line 843
    aput v3, v1, p2

    add-int/lit8 p2, p5, 0x1

    .line 844
    aput p1, v1, p5

    add-int/lit8 p1, p2, 0x1

    .line 846
    aput p4, v1, p2

    add-int/lit8 p2, p1, 0x1

    .line 847
    aput p3, v1, p1

    add-int/lit8 p1, p2, 0x1

    .line 848
    aput v4, v1, p2

    add-int/lit8 p2, p1, 0x1

    .line 849
    aput v3, v1, p1

    add-int/lit8 p1, p2, 0x1

    .line 850
    aput v2, v1, p2

    .line 851
    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    return-void

    .line 798
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "PolygonSpriteBatch.begin must be called before draw."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFFFFFFF)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p4

    move/from16 v3, p5

    .line 857
    iget-boolean v4, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->drawing:Z

    if-eqz v4, :cond_6

    .line 859
    iget-object v4, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangles:[S

    .line 860
    iget-object v5, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertices:[F

    .line 862
    iget-object v6, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->texture:Lcom/badlogic/gdx/graphics/Texture;

    .line 863
    iget-object v7, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->lastTexture:Lcom/badlogic/gdx/graphics/Texture;

    if-eq v6, v7, :cond_0

    .line 864
    invoke-direct {v0, v6}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->switchTexture(Lcom/badlogic/gdx/graphics/Texture;)V

    goto :goto_0

    .line 865
    :cond_0
    iget v6, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangleIndex:I

    add-int/lit8 v6, v6, 0x6

    array-length v7, v4

    if-gt v6, v7, :cond_1

    iget v6, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    add-int/lit8 v6, v6, 0x14

    array-length v7, v5

    if-le v6, v7, :cond_2

    .line 866
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->flush()V

    .line 868
    :cond_2
    :goto_0
    iget v6, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangleIndex:I

    .line 869
    iget v7, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    div-int/lit8 v7, v7, 0x5

    add-int/lit8 v8, v6, 0x1

    int-to-short v9, v7

    .line 870
    aput-short v9, v4, v6

    add-int/lit8 v6, v8, 0x1

    add-int/lit8 v10, v7, 0x1

    int-to-short v10, v10

    .line 871
    aput-short v10, v4, v8

    add-int/lit8 v8, v6, 0x1

    add-int/lit8 v10, v7, 0x2

    int-to-short v10, v10

    .line 872
    aput-short v10, v4, v6

    add-int/lit8 v6, v8, 0x1

    .line 873
    aput-short v10, v4, v8

    add-int/lit8 v8, v6, 0x1

    add-int/lit8 v7, v7, 0x3

    int-to-short v7, v7

    .line 874
    aput-short v7, v4, v6

    add-int/lit8 v6, v8, 0x1

    .line 875
    aput-short v9, v4, v8

    .line 876
    iput v6, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangleIndex:I

    add-float v4, p2, v2

    add-float v6, p3, v3

    neg-float v7, v2

    neg-float v8, v3

    sub-float v2, p6, v2

    sub-float v3, p7, v3

    const/high16 v9, 0x3f800000    # 1.0f

    cmpl-float v10, p8, v9

    if-nez v10, :cond_3

    cmpl-float v9, p9, v9

    if-eqz v9, :cond_4

    :cond_3
    mul-float v7, v7, p8

    mul-float v8, v8, p9

    mul-float v2, v2, p8

    mul-float v3, v3, p9

    :cond_4
    const/4 v9, 0x0

    cmpl-float v9, p10, v9

    if-eqz v9, :cond_5

    .line 915
    invoke-static/range {p10 .. p10}, Lcom/badlogic/gdx/math/MathUtils;->cosDeg(F)F

    move-result v9

    .line 916
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

    move/from16 v17, v3

    move v3, v2

    move v2, v9

    move v9, v8

    move/from16 v8, v17

    goto :goto_1

    :cond_5
    move v11, v7

    move v12, v11

    move v9, v8

    move v10, v9

    move v7, v3

    move v8, v7

    move v3, v2

    :goto_1
    add-float/2addr v12, v4

    add-float/2addr v9, v6

    add-float/2addr v11, v4

    add-float/2addr v7, v6

    add-float/2addr v2, v4

    add-float/2addr v8, v6

    add-float/2addr v3, v4

    add-float/2addr v10, v6

    .line 952
    iget v4, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u:F

    .line 953
    iget v6, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v2:F

    .line 954
    iget v13, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u2:F

    .line 955
    iget v1, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v:F

    .line 957
    iget v14, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->colorPacked:F

    .line 958
    iget v15, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    add-int/lit8 v16, v15, 0x1

    .line 959
    aput v12, v5, v15

    add-int/lit8 v12, v16, 0x1

    .line 960
    aput v9, v5, v16

    add-int/lit8 v9, v12, 0x1

    .line 961
    aput v14, v5, v12

    add-int/lit8 v12, v9, 0x1

    .line 962
    aput v4, v5, v9

    add-int/lit8 v9, v12, 0x1

    .line 963
    aput v6, v5, v12

    add-int/lit8 v12, v9, 0x1

    .line 965
    aput v11, v5, v9

    add-int/lit8 v9, v12, 0x1

    .line 966
    aput v7, v5, v12

    add-int/lit8 v7, v9, 0x1

    .line 967
    aput v14, v5, v9

    add-int/lit8 v9, v7, 0x1

    .line 968
    aput v4, v5, v7

    add-int/lit8 v4, v9, 0x1

    .line 969
    aput v1, v5, v9

    add-int/lit8 v7, v4, 0x1

    .line 971
    aput v2, v5, v4

    add-int/lit8 v2, v7, 0x1

    .line 972
    aput v8, v5, v7

    add-int/lit8 v4, v2, 0x1

    .line 973
    aput v14, v5, v2

    add-int/lit8 v2, v4, 0x1

    .line 974
    aput v13, v5, v4

    add-int/lit8 v4, v2, 0x1

    .line 975
    aput v1, v5, v2

    add-int/lit8 v1, v4, 0x1

    .line 977
    aput v3, v5, v4

    add-int/lit8 v2, v1, 0x1

    .line 978
    aput v10, v5, v1

    add-int/lit8 v1, v2, 0x1

    .line 979
    aput v14, v5, v2

    add-int/lit8 v2, v1, 0x1

    .line 980
    aput v13, v5, v1

    add-int/lit8 v1, v2, 0x1

    .line 981
    aput v6, v5, v2

    .line 982
    iput v1, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    return-void

    .line 857
    :cond_6
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "PolygonSpriteBatch.begin must be called before draw."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFFFFFFFZ)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p4

    move/from16 v3, p5

    .line 988
    iget-boolean v4, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->drawing:Z

    if-eqz v4, :cond_7

    .line 990
    iget-object v4, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangles:[S

    .line 991
    iget-object v5, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertices:[F

    .line 993
    iget-object v6, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->texture:Lcom/badlogic/gdx/graphics/Texture;

    .line 994
    iget-object v7, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->lastTexture:Lcom/badlogic/gdx/graphics/Texture;

    if-eq v6, v7, :cond_0

    .line 995
    invoke-direct {v0, v6}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->switchTexture(Lcom/badlogic/gdx/graphics/Texture;)V

    goto :goto_0

    .line 996
    :cond_0
    iget v6, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangleIndex:I

    add-int/lit8 v6, v6, 0x6

    array-length v7, v4

    if-gt v6, v7, :cond_1

    iget v6, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    add-int/lit8 v6, v6, 0x14

    array-length v7, v5

    if-le v6, v7, :cond_2

    .line 997
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->flush()V

    .line 999
    :cond_2
    :goto_0
    iget v6, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangleIndex:I

    .line 1000
    iget v7, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    div-int/lit8 v7, v7, 0x5

    add-int/lit8 v8, v6, 0x1

    int-to-short v9, v7

    .line 1001
    aput-short v9, v4, v6

    add-int/lit8 v6, v8, 0x1

    add-int/lit8 v10, v7, 0x1

    int-to-short v10, v10

    .line 1002
    aput-short v10, v4, v8

    add-int/lit8 v8, v6, 0x1

    add-int/lit8 v10, v7, 0x2

    int-to-short v10, v10

    .line 1003
    aput-short v10, v4, v6

    add-int/lit8 v6, v8, 0x1

    .line 1004
    aput-short v10, v4, v8

    add-int/lit8 v8, v6, 0x1

    add-int/lit8 v7, v7, 0x3

    int-to-short v7, v7

    .line 1005
    aput-short v7, v4, v6

    add-int/lit8 v6, v8, 0x1

    .line 1006
    aput-short v9, v4, v8

    .line 1007
    iput v6, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangleIndex:I

    add-float v4, p2, v2

    add-float v6, p3, v3

    neg-float v7, v2

    neg-float v8, v3

    sub-float v2, p6, v2

    sub-float v3, p7, v3

    const/high16 v9, 0x3f800000    # 1.0f

    cmpl-float v10, p8, v9

    if-nez v10, :cond_3

    cmpl-float v9, p9, v9

    if-eqz v9, :cond_4

    :cond_3
    mul-float v7, v7, p8

    mul-float v8, v8, p9

    mul-float v2, v2, p8

    mul-float v3, v3, p9

    :cond_4
    const/4 v9, 0x0

    cmpl-float v9, p10, v9

    if-eqz v9, :cond_5

    .line 1046
    invoke-static/range {p10 .. p10}, Lcom/badlogic/gdx/math/MathUtils;->cosDeg(F)F

    move-result v9

    .line 1047
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

    move/from16 v19, v3

    move v3, v2

    move v2, v9

    move v9, v8

    move/from16 v8, v19

    goto :goto_1

    :cond_5
    move v11, v7

    move v12, v11

    move v9, v8

    move v10, v9

    move v7, v3

    move v8, v7

    move v3, v2

    :goto_1
    add-float/2addr v12, v4

    add-float/2addr v9, v6

    add-float/2addr v11, v4

    add-float/2addr v7, v6

    add-float/2addr v2, v4

    add-float/2addr v8, v6

    add-float/2addr v3, v4

    add-float/2addr v10, v6

    if-eqz p11, :cond_6

    .line 1085
    iget v4, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u2:F

    .line 1086
    iget v6, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v2:F

    .line 1087
    iget v13, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u:F

    .line 1088
    iget v14, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v2:F

    .line 1089
    iget v15, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u:F

    move/from16 p2, v4

    .line 1090
    iget v4, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v:F

    move/from16 p3, v4

    .line 1091
    iget v4, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u2:F

    .line 1092
    iget v1, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v:F

    goto :goto_2

    .line 1094
    :cond_6
    iget v4, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u:F

    .line 1095
    iget v6, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v:F

    .line 1096
    iget v13, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u2:F

    .line 1097
    iget v14, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v:F

    .line 1098
    iget v15, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u2:F

    move/from16 p2, v4

    .line 1099
    iget v4, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v2:F

    move/from16 p3, v4

    .line 1100
    iget v4, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u:F

    .line 1101
    iget v1, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v2:F

    :goto_2
    move/from16 p1, v1

    move/from16 v16, v14

    move/from16 v17, v15

    move v14, v6

    move v15, v13

    move/from16 v6, p3

    move v13, v4

    move/from16 v4, p2

    .line 1104
    iget v1, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->colorPacked:F

    move/from16 p2, v13

    .line 1105
    iget v13, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    add-int/lit8 v18, v13, 0x1

    .line 1106
    aput v12, v5, v13

    add-int/lit8 v12, v18, 0x1

    .line 1107
    aput v9, v5, v18

    add-int/lit8 v9, v12, 0x1

    .line 1108
    aput v1, v5, v12

    add-int/lit8 v12, v9, 0x1

    .line 1109
    aput v4, v5, v9

    add-int/lit8 v4, v12, 0x1

    .line 1110
    aput v14, v5, v12

    add-int/lit8 v9, v4, 0x1

    .line 1112
    aput v11, v5, v4

    add-int/lit8 v4, v9, 0x1

    .line 1113
    aput v7, v5, v9

    add-int/lit8 v7, v4, 0x1

    .line 1114
    aput v1, v5, v4

    add-int/lit8 v4, v7, 0x1

    .line 1115
    aput v15, v5, v7

    add-int/lit8 v7, v4, 0x1

    .line 1116
    aput v16, v5, v4

    add-int/lit8 v4, v7, 0x1

    .line 1118
    aput v2, v5, v7

    add-int/lit8 v2, v4, 0x1

    .line 1119
    aput v8, v5, v4

    add-int/lit8 v4, v2, 0x1

    .line 1120
    aput v1, v5, v2

    add-int/lit8 v2, v4, 0x1

    .line 1121
    aput v17, v5, v4

    add-int/lit8 v4, v2, 0x1

    .line 1122
    aput v6, v5, v2

    add-int/lit8 v2, v4, 0x1

    .line 1124
    aput v3, v5, v4

    add-int/lit8 v3, v2, 0x1

    .line 1125
    aput v10, v5, v2

    add-int/lit8 v2, v3, 0x1

    .line 1126
    aput v1, v5, v3

    add-int/lit8 v1, v2, 0x1

    .line 1127
    aput p2, v5, v2

    add-int/lit8 v2, v1, 0x1

    .line 1128
    aput p1, v5, v1

    .line 1129
    iput v2, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    return-void

    .line 988
    :cond_7
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "PolygonSpriteBatch.begin must be called before draw."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFLcom/badlogic/gdx/math/Affine2;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    .line 1134
    iget-boolean v3, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->drawing:Z

    if-eqz v3, :cond_3

    .line 1136
    iget-object v3, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangles:[S

    .line 1137
    iget-object v4, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertices:[F

    .line 1139
    iget-object v5, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->texture:Lcom/badlogic/gdx/graphics/Texture;

    .line 1140
    iget-object v6, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->lastTexture:Lcom/badlogic/gdx/graphics/Texture;

    if-eq v5, v6, :cond_0

    .line 1141
    invoke-direct {v0, v5}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->switchTexture(Lcom/badlogic/gdx/graphics/Texture;)V

    goto :goto_0

    .line 1142
    :cond_0
    iget v5, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangleIndex:I

    add-int/lit8 v5, v5, 0x6

    array-length v6, v3

    if-gt v5, v6, :cond_1

    iget v5, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    add-int/lit8 v5, v5, 0x14

    array-length v6, v4

    if-le v5, v6, :cond_2

    .line 1143
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->flush()V

    .line 1145
    :cond_2
    :goto_0
    iget v5, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangleIndex:I

    .line 1146
    iget v6, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    div-int/lit8 v6, v6, 0x5

    add-int/lit8 v7, v5, 0x1

    int-to-short v8, v6

    .line 1147
    aput-short v8, v3, v5

    add-int/lit8 v5, v7, 0x1

    add-int/lit8 v9, v6, 0x1

    int-to-short v9, v9

    .line 1148
    aput-short v9, v3, v7

    add-int/lit8 v7, v5, 0x1

    add-int/lit8 v9, v6, 0x2

    int-to-short v9, v9

    .line 1149
    aput-short v9, v3, v5

    add-int/lit8 v5, v7, 0x1

    .line 1150
    aput-short v9, v3, v7

    add-int/lit8 v7, v5, 0x1

    add-int/lit8 v6, v6, 0x3

    int-to-short v6, v6

    .line 1151
    aput-short v6, v3, v5

    add-int/lit8 v5, v7, 0x1

    .line 1152
    aput-short v8, v3, v7

    .line 1153
    iput v5, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangleIndex:I

    .line 1156
    iget v3, v2, Lcom/badlogic/gdx/math/Affine2;->m02:F

    .line 1157
    iget v5, v2, Lcom/badlogic/gdx/math/Affine2;->m12:F

    .line 1158
    iget v6, v2, Lcom/badlogic/gdx/math/Affine2;->m01:F

    mul-float v6, v6, p3

    iget v7, v2, Lcom/badlogic/gdx/math/Affine2;->m02:F

    add-float/2addr v6, v7

    .line 1159
    iget v7, v2, Lcom/badlogic/gdx/math/Affine2;->m11:F

    mul-float v7, v7, p3

    iget v8, v2, Lcom/badlogic/gdx/math/Affine2;->m12:F

    add-float/2addr v7, v8

    .line 1160
    iget v8, v2, Lcom/badlogic/gdx/math/Affine2;->m00:F

    mul-float v8, v8, p2

    iget v9, v2, Lcom/badlogic/gdx/math/Affine2;->m01:F

    mul-float v9, v9, p3

    add-float/2addr v8, v9

    iget v9, v2, Lcom/badlogic/gdx/math/Affine2;->m02:F

    add-float/2addr v8, v9

    .line 1161
    iget v9, v2, Lcom/badlogic/gdx/math/Affine2;->m10:F

    mul-float v9, v9, p2

    iget v10, v2, Lcom/badlogic/gdx/math/Affine2;->m11:F

    mul-float v10, v10, p3

    add-float/2addr v9, v10

    iget v10, v2, Lcom/badlogic/gdx/math/Affine2;->m12:F

    add-float/2addr v9, v10

    .line 1162
    iget v10, v2, Lcom/badlogic/gdx/math/Affine2;->m00:F

    mul-float v10, v10, p2

    iget v11, v2, Lcom/badlogic/gdx/math/Affine2;->m02:F

    add-float/2addr v10, v11

    .line 1163
    iget v11, v2, Lcom/badlogic/gdx/math/Affine2;->m10:F

    mul-float v11, v11, p2

    iget v2, v2, Lcom/badlogic/gdx/math/Affine2;->m12:F

    add-float/2addr v11, v2

    .line 1165
    iget v2, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u:F

    .line 1166
    iget v12, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v2:F

    .line 1167
    iget v13, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u2:F

    .line 1168
    iget v1, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v:F

    .line 1170
    iget v14, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->colorPacked:F

    .line 1171
    iget v15, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    add-int/lit8 v16, v15, 0x1

    .line 1172
    aput v3, v4, v15

    add-int/lit8 v3, v16, 0x1

    .line 1173
    aput v5, v4, v16

    add-int/lit8 v5, v3, 0x1

    .line 1174
    aput v14, v4, v3

    add-int/lit8 v3, v5, 0x1

    .line 1175
    aput v2, v4, v5

    add-int/lit8 v5, v3, 0x1

    .line 1176
    aput v12, v4, v3

    add-int/lit8 v3, v5, 0x1

    .line 1178
    aput v6, v4, v5

    add-int/lit8 v5, v3, 0x1

    .line 1179
    aput v7, v4, v3

    add-int/lit8 v3, v5, 0x1

    .line 1180
    aput v14, v4, v5

    add-int/lit8 v5, v3, 0x1

    .line 1181
    aput v2, v4, v3

    add-int/lit8 v2, v5, 0x1

    .line 1182
    aput v1, v4, v5

    add-int/lit8 v3, v2, 0x1

    .line 1184
    aput v8, v4, v2

    add-int/lit8 v2, v3, 0x1

    .line 1185
    aput v9, v4, v3

    add-int/lit8 v3, v2, 0x1

    .line 1186
    aput v14, v4, v2

    add-int/lit8 v2, v3, 0x1

    .line 1187
    aput v13, v4, v3

    add-int/lit8 v3, v2, 0x1

    .line 1188
    aput v1, v4, v2

    add-int/lit8 v1, v3, 0x1

    .line 1190
    aput v10, v4, v3

    add-int/lit8 v2, v1, 0x1

    .line 1191
    aput v11, v4, v1

    add-int/lit8 v1, v2, 0x1

    .line 1192
    aput v14, v4, v2

    add-int/lit8 v2, v1, 0x1

    .line 1193
    aput v13, v4, v1

    add-int/lit8 v1, v2, 0x1

    .line 1194
    aput v12, v4, v2

    .line 1195
    iput v1, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    return-void

    .line 1134
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "PolygonSpriteBatch.begin must be called before draw."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public enableBlending()V
    .locals 1

    .line 1232
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->flush()V

    const/4 v0, 0x0

    .line 1233
    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->blendingDisabled:Z

    return-void
.end method

.method public end()V
    .locals 2

    .line 167
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->drawing:Z

    if-eqz v0, :cond_2

    .line 168
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->flush()V

    :cond_0
    const/4 v0, 0x0

    .line 169
    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->lastTexture:Lcom/badlogic/gdx/graphics/Texture;

    const/4 v0, 0x0

    .line 170
    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->drawing:Z

    .line 172
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    const/4 v1, 0x1

    .line 173
    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glDepthMask(Z)V

    .line 174
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->isBlendingEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0xbe2

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glDisable(I)V

    :cond_1
    return-void

    .line 167
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "PolygonSpriteBatch.begin must be called before end."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public flush()V
    .locals 8

    .line 1200
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    if-nez v0, :cond_0

    return-void

    .line 1202
    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->renderCalls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->renderCalls:I

    .line 1203
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->totalRenderCalls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->totalRenderCalls:I

    .line 1204
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangleIndex:I

    .line 1205
    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->maxTrianglesInBatch:I

    if-le v0, v1, :cond_1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->maxTrianglesInBatch:I

    .line 1207
    :cond_1
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->lastTexture:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Texture;->bind()V

    .line 1208
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    .line 1209
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertices:[F

    iget v3, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Lcom/badlogic/gdx/graphics/Mesh;->setVertices([FII)Lcom/badlogic/gdx/graphics/Mesh;

    .line 1210
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangles:[S

    invoke-virtual {v1, v2, v4, v0}, Lcom/badlogic/gdx/graphics/Mesh;->setIndices([SII)Lcom/badlogic/gdx/graphics/Mesh;

    .line 1211
    iget-boolean v2, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->blendingDisabled:Z

    const/16 v3, 0xbe2

    if-eqz v2, :cond_2

    .line 1212
    sget-object v2, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v2, v3}, Lcom/badlogic/gdx/graphics/GL20;->glDisable(I)V

    goto :goto_0

    .line 1214
    :cond_2
    sget-object v2, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v2, v3}, Lcom/badlogic/gdx/graphics/GL20;->glEnable(I)V

    .line 1215
    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->blendSrcFunc:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3

    sget-object v2, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    iget v3, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->blendSrcFunc:I

    iget v5, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->blendDstFunc:I

    iget v6, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->blendSrcFuncAlpha:I

    iget v7, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->blendDstFuncAlpha:I

    invoke-interface {v2, v3, v5, v6, v7}, Lcom/badlogic/gdx/graphics/GL20;->glBlendFuncSeparate(IIII)V

    .line 1218
    :cond_3
    :goto_0
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->customShader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    if-eqz v2, :cond_4

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->shader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    :goto_1
    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/badlogic/gdx/graphics/Mesh;->render(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;III)V

    .line 1220
    iput v4, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    .line 1221
    iput v4, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangleIndex:I

    return-void
.end method

.method public getBlendDstFunc()I
    .locals 1

    .line 1259
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->blendDstFunc:I

    return v0
.end method

.method public getBlendDstFuncAlpha()I
    .locals 1

    .line 1269
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->blendDstFuncAlpha:I

    return v0
.end method

.method public getBlendSrcFunc()I
    .locals 1

    .line 1254
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->blendSrcFunc:I

    return v0
.end method

.method public getBlendSrcFuncAlpha()I
    .locals 1

    .line 1264
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->blendSrcFuncAlpha:I

    return v0
.end method

.method public getColor()Lcom/badlogic/gdx/graphics/Color;
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->color:Lcom/badlogic/gdx/graphics/Color;

    return-object v0
.end method

.method public getPackedColor()F
    .locals 1

    .line 202
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->colorPacked:F

    return v0
.end method

.method public getProjectionMatrix()Lcom/badlogic/gdx/math/Matrix4;
    .locals 1

    .line 1280
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->projectionMatrix:Lcom/badlogic/gdx/math/Matrix4;

    return-object v0
.end method

.method public getShader()Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;
    .locals 1

    .line 1337
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->customShader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    if-nez v0, :cond_0

    .line 1338
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->shader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    :cond_0
    return-object v0
.end method

.method public getTransformMatrix()Lcom/badlogic/gdx/math/Matrix4;
    .locals 1

    .line 1285
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->transformMatrix:Lcom/badlogic/gdx/math/Matrix4;

    return-object v0
.end method

.method public isBlendingEnabled()Z
    .locals 1

    .line 1345
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->blendingDisabled:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isDrawing()Z
    .locals 1

    .line 1350
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->drawing:Z

    return v0
.end method

.method public setBlendFunction(II)V
    .locals 0

    .line 1238
    invoke-virtual {p0, p1, p2, p1, p2}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->setBlendFunctionSeparate(IIII)V

    return-void
.end method

.method public setBlendFunctionSeparate(IIII)V
    .locals 1

    .line 1243
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->blendSrcFunc:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->blendDstFunc:I

    if-ne v0, p2, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->blendSrcFuncAlpha:I

    if-ne v0, p3, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->blendDstFuncAlpha:I

    if-ne v0, p4, :cond_0

    return-void

    .line 1245
    :cond_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->flush()V

    .line 1246
    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->blendSrcFunc:I

    .line 1247
    iput p2, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->blendDstFunc:I

    .line 1248
    iput p3, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->blendSrcFuncAlpha:I

    .line 1249
    iput p4, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->blendDstFuncAlpha:I

    return-void
.end method

.method public setColor(FFFF)V
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/Color;->set(FFFF)Lcom/badlogic/gdx/graphics/Color;

    .line 186
    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result p1

    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->colorPacked:F

    return-void
.end method

.method public setColor(Lcom/badlogic/gdx/graphics/Color;)V
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/graphics/Color;->set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    .line 180
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result p1

    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->colorPacked:F

    return-void
.end method

.method public setPackedColor(F)V
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-static {v0, p1}, Lcom/badlogic/gdx/graphics/Color;->abgr8888ToColor(Lcom/badlogic/gdx/graphics/Color;F)V

    .line 192
    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->colorPacked:F

    return-void
.end method

.method public setProjectionMatrix(Lcom/badlogic/gdx/math/Matrix4;)V
    .locals 1

    .line 1290
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->drawing:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->flush()V

    .line 1291
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->projectionMatrix:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    .line 1292
    iget-boolean p1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->drawing:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->setupMatrices()V

    :cond_1
    return-void
.end method

.method public setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V
    .locals 1

    .line 1322
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->drawing:Z

    if-eqz v0, :cond_0

    .line 1323
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->flush()V

    .line 1325
    :cond_0
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->customShader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    .line 1326
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->drawing:Z

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    .line 1328
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->bind()V

    goto :goto_0

    .line 1330
    :cond_1
    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->shader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->bind()V

    .line 1331
    :goto_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->setupMatrices()V

    :cond_2
    return-void
.end method

.method public setTransformMatrix(Lcom/badlogic/gdx/math/Matrix4;)V
    .locals 1

    .line 1297
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->drawing:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->flush()V

    .line 1298
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->transformMatrix:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    .line 1299
    iget-boolean p1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->drawing:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->setupMatrices()V

    :cond_1
    return-void
.end method

.method protected setupMatrices()V
    .locals 5

    .line 1303
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->combinedMatrix:Lcom/badlogic/gdx/math/Matrix4;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->projectionMatrix:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->transformMatrix:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Matrix4;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    .line 1304
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->customShader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    const/4 v1, 0x0

    const-string v2, "u_texture"

    const-string v3, "u_projTrans"

    if-eqz v0, :cond_0

    .line 1305
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->combinedMatrix:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, v3, v4}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformMatrix(Ljava/lang/String;Lcom/badlogic/gdx/math/Matrix4;)V

    .line 1306
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->customShader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v0, v2, v1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformi(Ljava/lang/String;I)V

    goto :goto_0

    .line 1308
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->shader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->combinedMatrix:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, v3, v4}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformMatrix(Ljava/lang/String;Lcom/badlogic/gdx/math/Matrix4;)V

    .line 1309
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->shader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v0, v2, v1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformi(Ljava/lang/String;I)V

    :goto_0
    return-void
.end method
