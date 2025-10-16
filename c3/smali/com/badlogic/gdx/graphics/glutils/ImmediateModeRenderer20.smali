.class public Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;
.super Ljava/lang/Object;
.source "ImmediateModeRenderer20.java"

# interfaces
.implements Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;


# instance fields
.field private final colorOffset:I

.field private final maxVertices:I

.field private final mesh:Lcom/badlogic/gdx/graphics/Mesh;

.field private final normalOffset:I

.field private numSetTexCoords:I

.field private final numTexCoords:I

.field private numVertices:I

.field private ownsShader:Z

.field private primitiveType:I

.field private final projModelView:Lcom/badlogic/gdx/math/Matrix4;

.field private shader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

.field private final shaderUniformNames:[Ljava/lang/String;

.field private final texCoordOffset:I

.field private vertexIdx:I

.field private final vertexSize:I

.field private final vertices:[F


# direct methods
.method public constructor <init>(IZZI)V
    .locals 6

    .line 55
    invoke-static {p2, p3, p4}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->createDefaultShader(ZZI)Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    move-result-object v5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;-><init>(IZZILcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    const/4 p1, 0x1

    .line 56
    iput-boolean p1, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->ownsShader:Z

    return-void
.end method

.method public constructor <init>(IZZILcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V
    .locals 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->projModelView:Lcom/badlogic/gdx/math/Matrix4;

    .line 61
    iput p1, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->maxVertices:I

    .line 62
    iput p4, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->numTexCoords:I

    .line 63
    iput-object p5, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->shader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    .line 65
    invoke-direct {p0, p2, p3, p4}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->buildVertexAttributes(ZZI)[Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object p2

    .line 66
    new-instance p3, Lcom/badlogic/gdx/graphics/Mesh;

    const/4 p5, 0x0

    invoke-direct {p3, p5, p1, p5, p2}, Lcom/badlogic/gdx/graphics/Mesh;-><init>(ZII[Lcom/badlogic/gdx/graphics/VertexAttribute;)V

    iput-object p3, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    .line 68
    invoke-virtual {p3}, Lcom/badlogic/gdx/graphics/Mesh;->getVertexAttributes()Lcom/badlogic/gdx/graphics/VertexAttributes;

    move-result-object p2

    iget p2, p2, Lcom/badlogic/gdx/graphics/VertexAttributes;->vertexSize:I

    const/4 v0, 0x4

    div-int/2addr p2, v0

    mul-int p1, p1, p2

    new-array p1, p1, [F

    iput-object p1, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->vertices:[F

    .line 69
    invoke-virtual {p3}, Lcom/badlogic/gdx/graphics/Mesh;->getVertexAttributes()Lcom/badlogic/gdx/graphics/VertexAttributes;

    move-result-object p1

    iget p1, p1, Lcom/badlogic/gdx/graphics/VertexAttributes;->vertexSize:I

    div-int/2addr p1, v0

    iput p1, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->vertexSize:I

    const/16 p1, 0x8

    .line 70
    invoke-virtual {p3, p1}, Lcom/badlogic/gdx/graphics/Mesh;->getVertexAttribute(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p3, p1}, Lcom/badlogic/gdx/graphics/Mesh;->getVertexAttribute(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object p1

    iget p1, p1, Lcom/badlogic/gdx/graphics/VertexAttribute;->offset:I

    div-int/2addr p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput p1, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->normalOffset:I

    .line 71
    invoke-virtual {p3, v0}, Lcom/badlogic/gdx/graphics/Mesh;->getVertexAttribute(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p3, v0}, Lcom/badlogic/gdx/graphics/Mesh;->getVertexAttribute(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object p1

    iget p1, p1, Lcom/badlogic/gdx/graphics/VertexAttribute;->offset:I

    div-int/2addr p1, v0

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    iput p1, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->colorOffset:I

    const/16 p1, 0x10

    .line 73
    invoke-virtual {p3, p1}, Lcom/badlogic/gdx/graphics/Mesh;->getVertexAttribute(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 74
    invoke-virtual {p3, p1}, Lcom/badlogic/gdx/graphics/Mesh;->getVertexAttribute(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object p1

    iget p1, p1, Lcom/badlogic/gdx/graphics/VertexAttribute;->offset:I

    div-int/2addr p1, v0

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    :goto_2
    iput p1, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->texCoordOffset:I

    .line 77
    new-array p1, p4, [Ljava/lang/String;

    iput-object p1, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->shaderUniformNames:[Ljava/lang/String;

    :goto_3
    if-ge p5, p4, :cond_3

    .line 79
    iget-object p1, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->shaderUniformNames:[Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "u_sampler"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, p5

    add-int/lit8 p5, p5, 0x1

    goto :goto_3

    :cond_3
    return-void
.end method

.method public constructor <init>(ZZI)V
    .locals 6

    .line 50
    invoke-static {p1, p2, p3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->createDefaultShader(ZZI)Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    move-result-object v5

    const/16 v1, 0x1388

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;-><init>(IZZILcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    const/4 p1, 0x1

    .line 51
    iput-boolean p1, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->ownsShader:Z

    return-void
.end method

.method private buildVertexAttributes(ZZI)[Lcom/badlogic/gdx/graphics/VertexAttribute;
    .locals 6

    .line 84
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    .line 85
    new-instance v1, Lcom/badlogic/gdx/graphics/VertexAttribute;

    const/4 v2, 0x1

    const/4 v3, 0x3

    const-string v4, "a_position"

    invoke-direct {v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    .line 86
    new-instance p1, Lcom/badlogic/gdx/graphics/VertexAttribute;

    const/16 v1, 0x8

    const-string v2, "a_normal"

    invoke-direct {p1, v1, v3, v2}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_0
    if-eqz p2, :cond_1

    .line 87
    new-instance p1, Lcom/badlogic/gdx/graphics/VertexAttribute;

    const/4 p2, 0x4

    const-string v1, "a_color"

    invoke-direct {p1, p2, p2, v1}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_1
    const/4 p1, 0x0

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p3, :cond_2

    .line 89
    new-instance v1, Lcom/badlogic/gdx/graphics/VertexAttribute;

    const/16 v2, 0x10

    const/4 v3, 0x2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "a_texCoord"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 91
    :cond_2
    iget p2, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    new-array p2, p2, [Lcom/badlogic/gdx/graphics/VertexAttribute;

    .line 92
    :goto_1
    iget p3, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge p1, p3, :cond_3

    .line 93
    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/badlogic/gdx/graphics/VertexAttribute;

    aput-object p3, p2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_3
    return-object p2
.end method

.method public static createDefaultShader(ZZI)Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;
    .locals 1

    .line 239
    invoke-static {p0, p1, p2}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->createVertexShader(ZZI)Ljava/lang/String;

    move-result-object v0

    .line 240
    invoke-static {p0, p1, p2}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->createFragmentShader(ZZI)Ljava/lang/String;

    move-result-object p0

    .line 241
    new-instance p1, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-direct {p1, v0, p0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->isCompiled()Z

    move-result p0

    if-eqz p0, :cond_0

    return-object p1

    :cond_0
    new-instance p0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error compiling shader: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->getLog()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static createFragmentShader(ZZI)Ljava/lang/String;
    .locals 4

    if-eqz p1, :cond_0

    const-string p0, "#ifdef GL_ES\nprecision mediump float;\n#endif\nvarying vec4 v_col;\n"

    goto :goto_0

    :cond_0
    const-string p0, "#ifdef GL_ES\nprecision mediump float;\n#endif\n"

    :goto_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, p2, :cond_1

    .line 216
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "varying vec2 v_tex"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ";\n"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 217
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "uniform sampler2D u_sampler"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 220
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "void main() {\n   gl_FragColor = "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_2

    const-string p0, "v_col"

    goto :goto_2

    :cond_2
    const-string p0, "vec4(1, 1, 1, 1)"

    :goto_2
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    if-lez p2, :cond_3

    .line 223
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " * "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_3
    :goto_3
    if-ge v0, p2, :cond_5

    add-int/lit8 p1, p2, -0x1

    const-string v1, ",  v_tex"

    const-string v2, " texture2D(u_sampler"

    if-ne v0, p1, :cond_4

    .line 227
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_4

    .line 229
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ") *"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 233
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ";\n}"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static createVertexShader(ZZI)Ljava/lang/String;
    .locals 5

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "attribute vec4 a_position;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ""

    if-eqz p0, :cond_0

    const-string p0, "attribute vec3 a_normal;\n"

    goto :goto_0

    :cond_0
    move-object p0, v1

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_1

    const-string p0, "attribute vec4 a_color;\n"

    goto :goto_1

    :cond_1
    move-object p0, v1

    :goto_1
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_2
    const-string v3, ";\n"

    if-ge v2, p2, :cond_2

    .line 187
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "attribute vec2 a_texCoord"

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 190
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "uniform mat4 u_projModelView;\n"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_3

    const-string v1, "varying vec4 v_col;\n"

    :cond_3
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    :goto_3
    if-ge v1, p2, :cond_4

    .line 194
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "varying vec2 v_tex"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 197
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "void main() {\n   gl_Position = u_projModelView * a_position;\n"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    if-eqz p1, :cond_5

    .line 199
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "   v_col = a_color;\n   v_col.a *= 255.0 / 254.0;\n"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_5
    :goto_4
    if-ge v0, p2, :cond_6

    .line 204
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "   v_tex"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " = "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "a_texCoord"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 206
    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "   gl_PointSize = 1.0;\n}\n"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public begin(Lcom/badlogic/gdx/math/Matrix4;I)V
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->projModelView:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    .line 109
    iput p2, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->primitiveType:I

    return-void
.end method

.method public color(F)V
    .locals 3

    .line 121
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->vertices:[F

    iget v1, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->vertexIdx:I

    iget v2, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->colorOffset:I

    add-int/2addr v1, v2

    aput p1, v0, v1

    return-void
.end method

.method public color(FFFF)V
    .locals 3

    .line 117
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->vertices:[F

    iget v1, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->vertexIdx:I

    iget v2, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->colorOffset:I

    add-int/2addr v1, v2

    invoke-static {p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits(FFFF)F

    move-result p1

    aput p1, v0, v1

    return-void
.end method

.method public color(Lcom/badlogic/gdx/graphics/Color;)V
    .locals 3

    .line 113
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->vertices:[F

    iget v1, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->vertexIdx:I

    iget v2, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->colorOffset:I

    add-int/2addr v1, v2

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result p1

    aput p1, v0, v1

    return-void
.end method

.method public dispose()V
    .locals 1

    .line 177
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->ownsShader:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->shader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->dispose()V

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Mesh;->dispose()V

    return-void
.end method

.method public end()V
    .locals 0

    .line 164
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->flush()V

    return-void
.end method

.method public flush()V
    .locals 4

    .line 150
    iget v0, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->numVertices:I

    if-nez v0, :cond_0

    return-void

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->shader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->bind()V

    .line 152
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->shader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->projModelView:Lcom/badlogic/gdx/math/Matrix4;

    const-string v2, "u_projModelView"

    invoke-virtual {v0, v2, v1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformMatrix(Ljava/lang/String;Lcom/badlogic/gdx/math/Matrix4;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 153
    :goto_0
    iget v2, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->numTexCoords:I

    if-ge v1, v2, :cond_1

    .line 154
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->shader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->shaderUniformNames:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3, v1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformi(Ljava/lang/String;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 155
    :cond_1
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->vertices:[F

    iget v3, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->vertexIdx:I

    invoke-virtual {v1, v2, v0, v3}, Lcom/badlogic/gdx/graphics/Mesh;->setVertices([FII)Lcom/badlogic/gdx/graphics/Mesh;

    .line 156
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->shader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    iget v3, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->primitiveType:I

    invoke-virtual {v1, v2, v3}, Lcom/badlogic/gdx/graphics/Mesh;->render(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;I)V

    .line 158
    iput v0, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->numSetTexCoords:I

    .line 159
    iput v0, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->vertexIdx:I

    .line 160
    iput v0, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->numVertices:I

    return-void
.end method

.method public getMaxVertices()I
    .locals 1

    .line 173
    iget v0, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->maxVertices:I

    return v0
.end method

.method public getNumVertices()I
    .locals 1

    .line 168
    iget v0, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->numVertices:I

    return v0
.end method

.method public getShader()Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->shader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    return-object v0
.end method

.method public normal(FFF)V
    .locals 2

    .line 132
    iget v0, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->vertexIdx:I

    iget v1, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->normalOffset:I

    add-int/2addr v0, v1

    .line 133
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->vertices:[F

    aput p1, v1, v0

    add-int/lit8 p1, v0, 0x1

    .line 134
    aput p2, v1, p1

    add-int/lit8 v0, v0, 0x2

    .line 135
    aput p3, v1, v0

    return-void
.end method

.method public setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V
    .locals 1

    .line 98
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->ownsShader:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->shader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->dispose()V

    .line 99
    :cond_0
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->shader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    const/4 p1, 0x0

    .line 100
    iput-boolean p1, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->ownsShader:Z

    return-void
.end method

.method public texCoord(FF)V
    .locals 4

    .line 125
    iget v0, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->vertexIdx:I

    iget v1, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->texCoordOffset:I

    add-int/2addr v0, v1

    .line 126
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->vertices:[F

    iget v2, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->numSetTexCoords:I

    add-int v3, v0, v2

    aput p1, v1, v3

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x1

    .line 127
    aput p2, v1, v0

    add-int/lit8 v2, v2, 0x2

    .line 128
    iput v2, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->numSetTexCoords:I

    return-void
.end method

.method public vertex(FFF)V
    .locals 2

    .line 139
    iget v0, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->vertexIdx:I

    .line 140
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->vertices:[F

    aput p1, v1, v0

    add-int/lit8 p1, v0, 0x1

    .line 141
    aput p2, v1, p1

    add-int/lit8 p1, v0, 0x2

    .line 142
    aput p3, v1, p1

    const/4 p1, 0x0

    .line 144
    iput p1, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->numSetTexCoords:I

    .line 145
    iget p1, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->vertexSize:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->vertexIdx:I

    .line 146
    iget p1, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->numVertices:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->numVertices:I

    return-void
.end method
