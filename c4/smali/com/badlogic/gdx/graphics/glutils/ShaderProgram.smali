.class public Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;
.super Ljava/lang/Object;
.source "ShaderProgram.java"

# interfaces
.implements Lcom/badlogic/gdx/utils/Disposable;


# static fields
.field public static final BINORMAL_ATTRIBUTE:Ljava/lang/String; = "a_binormal"

.field public static final BONEWEIGHT_ATTRIBUTE:Ljava/lang/String; = "a_boneWeight"

.field public static final COLOR_ATTRIBUTE:Ljava/lang/String; = "a_color"

.field public static final NORMAL_ATTRIBUTE:Ljava/lang/String; = "a_normal"

.field public static final POSITION_ATTRIBUTE:Ljava/lang/String; = "a_position"

.field public static final TANGENT_ATTRIBUTE:Ljava/lang/String; = "a_tangent"

.field public static final TEXCOORD_ATTRIBUTE:Ljava/lang/String; = "a_texCoord"

.field static final intbuf:Ljava/nio/IntBuffer;

.field public static pedantic:Z = true

.field public static prependFragmentCode:Ljava/lang/String; = ""

.field public static prependVertexCode:Ljava/lang/String; = ""

.field private static final shaders:Lcom/badlogic/gdx/utils/ObjectMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ObjectMap<",
            "Lcom/badlogic/gdx/Application;",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private attributeNames:[Ljava/lang/String;

.field private final attributeSizes:Lcom/badlogic/gdx/utils/ObjectIntMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ObjectIntMap<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final attributeTypes:Lcom/badlogic/gdx/utils/ObjectIntMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ObjectIntMap<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final attributes:Lcom/badlogic/gdx/utils/ObjectIntMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ObjectIntMap<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private fragmentShaderHandle:I

.field private final fragmentShaderSource:Ljava/lang/String;

.field private invalidated:Z

.field private isCompiled:Z

.field private log:Ljava/lang/String;

.field private final matrix:Ljava/nio/FloatBuffer;

.field params:Ljava/nio/IntBuffer;

.field private program:I

.field private refCount:I

.field type:Ljava/nio/IntBuffer;

.field private uniformNames:[Ljava/lang/String;

.field private final uniformSizes:Lcom/badlogic/gdx/utils/ObjectIntMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ObjectIntMap<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final uniformTypes:Lcom/badlogic/gdx/utils/ObjectIntMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ObjectIntMap<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final uniforms:Lcom/badlogic/gdx/utils/ObjectIntMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ObjectIntMap<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private vertexShaderHandle:I

.field private final vertexShaderSource:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 93
    new-instance v0, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->shaders:Lcom/badlogic/gdx/utils/ObjectMap;

    const/4 v0, 0x1

    .line 259
    invoke-static {v0}, Lcom/badlogic/gdx/utils/BufferUtils;->newIntBuffer(I)Ljava/nio/IntBuffer;

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->intbuf:Ljava/nio/IntBuffer;

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/files/FileHandle;)V
    .locals 0

    .line 176
    invoke-virtual {p1}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 96
    iput-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->log:Ljava/lang/String;

    .line 102
    new-instance v0, Lcom/badlogic/gdx/utils/ObjectIntMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ObjectIntMap;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->uniforms:Lcom/badlogic/gdx/utils/ObjectIntMap;

    .line 105
    new-instance v0, Lcom/badlogic/gdx/utils/ObjectIntMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ObjectIntMap;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->uniformTypes:Lcom/badlogic/gdx/utils/ObjectIntMap;

    .line 108
    new-instance v0, Lcom/badlogic/gdx/utils/ObjectIntMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ObjectIntMap;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->uniformSizes:Lcom/badlogic/gdx/utils/ObjectIntMap;

    .line 114
    new-instance v0, Lcom/badlogic/gdx/utils/ObjectIntMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ObjectIntMap;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->attributes:Lcom/badlogic/gdx/utils/ObjectIntMap;

    .line 117
    new-instance v0, Lcom/badlogic/gdx/utils/ObjectIntMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ObjectIntMap;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->attributeTypes:Lcom/badlogic/gdx/utils/ObjectIntMap;

    .line 120
    new-instance v0, Lcom/badlogic/gdx/utils/ObjectIntMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ObjectIntMap;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->attributeSizes:Lcom/badlogic/gdx/utils/ObjectIntMap;

    const/4 v0, 0x0

    .line 147
    iput v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->refCount:I

    const/4 v0, 0x1

    .line 807
    invoke-static {v0}, Lcom/badlogic/gdx/utils/BufferUtils;->newIntBuffer(I)Ljava/nio/IntBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->params:Ljava/nio/IntBuffer;

    .line 808
    invoke-static {v0}, Lcom/badlogic/gdx/utils/BufferUtils;->newIntBuffer(I)Ljava/nio/IntBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->type:Ljava/nio/IntBuffer;

    if-eqz p1, :cond_4

    if-eqz p2, :cond_3

    .line 158
    sget-object v0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->prependVertexCode:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->prependVertexCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 160
    :cond_0
    sget-object v0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->prependFragmentCode:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->prependFragmentCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 163
    :cond_1
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->vertexShaderSource:Ljava/lang/String;

    .line 164
    iput-object p2, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->fragmentShaderSource:Ljava/lang/String;

    const/16 v0, 0x10

    .line 165
    invoke-static {v0}, Lcom/badlogic/gdx/utils/BufferUtils;->newFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->matrix:Ljava/nio/FloatBuffer;

    .line 167
    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->compileShaders(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->isCompiled()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 169
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->fetchAttributes()V

    .line 170
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->fetchUniforms()V

    .line 171
    sget-object p1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-direct {p0, p1, p0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->addManagedShader(Lcom/badlogic/gdx/Application;Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    :cond_2
    return-void

    .line 156
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "fragment shader must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 155
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "vertex shader must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private addManagedShader(Lcom/badlogic/gdx/Application;Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V
    .locals 2

    .line 753
    sget-object v0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->shaders:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/utils/Array;

    if-nez v1, :cond_0

    .line 754
    new-instance v1, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    .line 755
    :cond_0
    invoke-virtual {v1, p2}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 756
    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private checkManaged()V
    .locals 2

    .line 746
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->invalidated:Z

    if-eqz v0, :cond_0

    .line 747
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->vertexShaderSource:Ljava/lang/String;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->fragmentShaderSource:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->compileShaders(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 748
    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->invalidated:Z

    :cond_0
    return-void
.end method

.method public static clearAllShaderPrograms(Lcom/badlogic/gdx/Application;)V
    .locals 1

    .line 774
    sget-object v0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->shaders:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/utils/ObjectMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private compileShaders(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const v0, 0x8b31

    .line 184
    invoke-direct {p0, v0, p1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->loadShader(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->vertexShaderHandle:I

    const p1, 0x8b30

    .line 185
    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->loadShader(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->fragmentShaderHandle:I

    .line 187
    iget p2, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->vertexShaderHandle:I

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-eq p2, v1, :cond_2

    if-ne p1, v1, :cond_0

    goto :goto_0

    .line 192
    :cond_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->createProgram()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->linkProgram(I)I

    move-result p1

    iput p1, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->program:I

    if-ne p1, v1, :cond_1

    .line 194
    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->isCompiled:Z

    return-void

    :cond_1
    const/4 p1, 0x1

    .line 198
    iput-boolean p1, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->isCompiled:Z

    return-void

    .line 188
    :cond_2
    :goto_0
    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->isCompiled:Z

    return-void
.end method

.method private fetchAttributeLocation(Ljava/lang/String;)I
    .locals 3

    .line 282
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 286
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->attributes:Lcom/badlogic/gdx/utils/ObjectIntMap;

    const/4 v2, -0x2

    invoke-virtual {v1, p1, v2}, Lcom/badlogic/gdx/utils/ObjectIntMap;->get(Ljava/lang/Object;I)I

    move-result v1

    if-ne v1, v2, :cond_0

    .line 287
    iget v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->program:I

    invoke-interface {v0, v1, p1}, Lcom/badlogic/gdx/graphics/GL20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v1

    .line 288
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->attributes:Lcom/badlogic/gdx/utils/ObjectIntMap;

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/ObjectIntMap;->put(Ljava/lang/Object;I)V

    :cond_0
    return v1
.end method

.method private fetchAttributes()V
    .locals 7

    .line 831
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->params:Ljava/nio/IntBuffer;

    invoke-virtual {v0}, Ljava/nio/IntBuffer;->clear()Ljava/nio/Buffer;

    .line 832
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    iget v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->program:I

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->params:Ljava/nio/IntBuffer;

    const v3, 0x8b89

    invoke-interface {v0, v1, v3, v2}, Lcom/badlogic/gdx/graphics/GL20;->glGetProgramiv(IILjava/nio/IntBuffer;)V

    .line 833
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->params:Ljava/nio/IntBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/IntBuffer;->get(I)I

    move-result v0

    .line 835
    new-array v2, v0, [Ljava/lang/String;

    iput-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->attributeNames:[Ljava/lang/String;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 838
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->params:Ljava/nio/IntBuffer;

    invoke-virtual {v3}, Ljava/nio/IntBuffer;->clear()Ljava/nio/Buffer;

    .line 839
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->params:Ljava/nio/IntBuffer;

    const/4 v4, 0x1

    invoke-virtual {v3, v1, v4}, Ljava/nio/IntBuffer;->put(II)Ljava/nio/IntBuffer;

    .line 840
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->type:Ljava/nio/IntBuffer;

    invoke-virtual {v3}, Ljava/nio/IntBuffer;->clear()Ljava/nio/Buffer;

    .line 841
    sget-object v3, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    iget v4, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->program:I

    iget-object v5, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->params:Ljava/nio/IntBuffer;

    iget-object v6, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->type:Ljava/nio/IntBuffer;

    invoke-interface {v3, v4, v2, v5, v6}, Lcom/badlogic/gdx/graphics/GL20;->glGetActiveAttrib(IILjava/nio/IntBuffer;Ljava/nio/IntBuffer;)Ljava/lang/String;

    move-result-object v3

    .line 842
    sget-object v4, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    iget v5, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->program:I

    invoke-interface {v4, v5, v3}, Lcom/badlogic/gdx/graphics/GL20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v4

    .line 843
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->attributes:Lcom/badlogic/gdx/utils/ObjectIntMap;

    invoke-virtual {v5, v3, v4}, Lcom/badlogic/gdx/utils/ObjectIntMap;->put(Ljava/lang/Object;I)V

    .line 844
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->attributeTypes:Lcom/badlogic/gdx/utils/ObjectIntMap;

    iget-object v5, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->type:Ljava/nio/IntBuffer;

    invoke-virtual {v5, v1}, Ljava/nio/IntBuffer;->get(I)I

    move-result v5

    invoke-virtual {v4, v3, v5}, Lcom/badlogic/gdx/utils/ObjectIntMap;->put(Ljava/lang/Object;I)V

    .line 845
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->attributeSizes:Lcom/badlogic/gdx/utils/ObjectIntMap;

    iget-object v5, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->params:Ljava/nio/IntBuffer;

    invoke-virtual {v5, v1}, Ljava/nio/IntBuffer;->get(I)I

    move-result v5

    invoke-virtual {v4, v3, v5}, Lcom/badlogic/gdx/utils/ObjectIntMap;->put(Ljava/lang/Object;I)V

    .line 846
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->attributeNames:[Ljava/lang/String;

    aput-object v3, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private fetchUniformLocation(Ljava/lang/String;)I
    .locals 1

    .line 294
    sget-boolean v0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->pedantic:Z

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->fetchUniformLocation(Ljava/lang/String;Z)I

    move-result p1

    return p1
.end method

.method private fetchUniforms()V
    .locals 7

    .line 811
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->params:Ljava/nio/IntBuffer;

    invoke-virtual {v0}, Ljava/nio/IntBuffer;->clear()Ljava/nio/Buffer;

    .line 812
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    iget v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->program:I

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->params:Ljava/nio/IntBuffer;

    const v3, 0x8b86

    invoke-interface {v0, v1, v3, v2}, Lcom/badlogic/gdx/graphics/GL20;->glGetProgramiv(IILjava/nio/IntBuffer;)V

    .line 813
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->params:Ljava/nio/IntBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/IntBuffer;->get(I)I

    move-result v0

    .line 815
    new-array v2, v0, [Ljava/lang/String;

    iput-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->uniformNames:[Ljava/lang/String;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 818
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->params:Ljava/nio/IntBuffer;

    invoke-virtual {v3}, Ljava/nio/IntBuffer;->clear()Ljava/nio/Buffer;

    .line 819
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->params:Ljava/nio/IntBuffer;

    const/4 v4, 0x1

    invoke-virtual {v3, v1, v4}, Ljava/nio/IntBuffer;->put(II)Ljava/nio/IntBuffer;

    .line 820
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->type:Ljava/nio/IntBuffer;

    invoke-virtual {v3}, Ljava/nio/IntBuffer;->clear()Ljava/nio/Buffer;

    .line 821
    sget-object v3, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    iget v4, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->program:I

    iget-object v5, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->params:Ljava/nio/IntBuffer;

    iget-object v6, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->type:Ljava/nio/IntBuffer;

    invoke-interface {v3, v4, v2, v5, v6}, Lcom/badlogic/gdx/graphics/GL20;->glGetActiveUniform(IILjava/nio/IntBuffer;Ljava/nio/IntBuffer;)Ljava/lang/String;

    move-result-object v3

    .line 822
    sget-object v4, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    iget v5, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->program:I

    invoke-interface {v4, v5, v3}, Lcom/badlogic/gdx/graphics/GL20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v4

    .line 823
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->uniforms:Lcom/badlogic/gdx/utils/ObjectIntMap;

    invoke-virtual {v5, v3, v4}, Lcom/badlogic/gdx/utils/ObjectIntMap;->put(Ljava/lang/Object;I)V

    .line 824
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->uniformTypes:Lcom/badlogic/gdx/utils/ObjectIntMap;

    iget-object v5, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->type:Ljava/nio/IntBuffer;

    invoke-virtual {v5, v1}, Ljava/nio/IntBuffer;->get(I)I

    move-result v5

    invoke-virtual {v4, v3, v5}, Lcom/badlogic/gdx/utils/ObjectIntMap;->put(Ljava/lang/Object;I)V

    .line 825
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->uniformSizes:Lcom/badlogic/gdx/utils/ObjectIntMap;

    iget-object v5, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->params:Ljava/nio/IntBuffer;

    invoke-virtual {v5, v1}, Ljava/nio/IntBuffer;->get(I)I

    move-result v5

    invoke-virtual {v4, v3, v5}, Lcom/badlogic/gdx/utils/ObjectIntMap;->put(Ljava/lang/Object;I)V

    .line 826
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->uniformNames:[Ljava/lang/String;

    aput-object v3, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static getManagedStatus()Ljava/lang/String;
    .locals 4

    .line 778
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Managed shaders/app: { "

    .line 780
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 781
    sget-object v1, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->shaders:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/ObjectMap;->keys()Lcom/badlogic/gdx/utils/ObjectMap$Keys;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/ObjectMap$Keys;->iterator()Lcom/badlogic/gdx/utils/ObjectMap$Keys;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/Application;

    .line 782
    sget-object v3, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->shaders:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/utils/Array;

    iget v2, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    .line 783
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v1, "}"

    .line 785
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 786
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getNumManagedShaderPrograms()I
    .locals 2

    .line 791
    sget-object v0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->shaders:Lcom/badlogic/gdx/utils/ObjectMap;

    sget-object v1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    return v0
.end method

.method public static invalidateAllShaderPrograms(Lcom/badlogic/gdx/Application;)V
    .locals 3

    .line 762
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    if-nez v0, :cond_0

    return-void

    .line 764
    :cond_0
    sget-object v0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->shaders:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/badlogic/gdx/utils/Array;

    if-nez p0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 767
    :goto_0
    iget v1, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v1, :cond_2

    .line 768
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->invalidated:Z

    .line 769
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-direct {v1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->checkManaged()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private linkProgram(I)I
    .locals 4

    .line 234
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    return v1

    .line 237
    :cond_0
    iget v2, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->vertexShaderHandle:I

    invoke-interface {v0, p1, v2}, Lcom/badlogic/gdx/graphics/GL20;->glAttachShader(II)V

    .line 238
    iget v2, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->fragmentShaderHandle:I

    invoke-interface {v0, p1, v2}, Lcom/badlogic/gdx/graphics/GL20;->glAttachShader(II)V

    .line 239
    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL20;->glLinkProgram(I)V

    const/4 v2, 0x4

    .line 241
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 242
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 243
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v2

    const v3, 0x8b82

    .line 245
    invoke-interface {v0, p1, v3, v2}, Lcom/badlogic/gdx/graphics/GL20;->glGetProgramiv(IILjava/nio/IntBuffer;)V

    const/4 v0, 0x0

    .line 246
    invoke-virtual {v2, v0}, Ljava/nio/IntBuffer;->get(I)I

    move-result v0

    if-nez v0, :cond_1

    .line 251
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->log:Ljava/lang/String;

    return v1

    :cond_1
    return p1
.end method

.method private loadShader(ILjava/lang/String;)I
    .locals 4

    .line 202
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    const/4 v1, 0x1

    .line 203
    invoke-static {v1}, Lcom/badlogic/gdx/utils/BufferUtils;->newIntBuffer(I)Ljava/nio/IntBuffer;

    move-result-object v1

    .line 205
    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL20;->glCreateShader(I)I

    move-result v2

    const/4 v3, -0x1

    if-nez v2, :cond_0

    return v3

    .line 208
    :cond_0
    invoke-interface {v0, v2, p2}, Lcom/badlogic/gdx/graphics/GL20;->glShaderSource(ILjava/lang/String;)V

    .line 209
    invoke-interface {v0, v2}, Lcom/badlogic/gdx/graphics/GL20;->glCompileShader(I)V

    const p2, 0x8b81

    .line 210
    invoke-interface {v0, v2, p2, v1}, Lcom/badlogic/gdx/graphics/GL20;->glGetShaderiv(IILjava/nio/IntBuffer;)V

    const/4 p2, 0x0

    .line 212
    invoke-virtual {v1, p2}, Ljava/nio/IntBuffer;->get(I)I

    move-result p2

    if-nez p2, :cond_2

    .line 217
    invoke-interface {v0, v2}, Lcom/badlogic/gdx/graphics/GL20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object p2

    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->log:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v1, 0x8b31

    if-ne p1, v1, :cond_1

    const-string p1, "Vertex shader\n"

    goto :goto_0

    :cond_1
    const-string p1, "Fragment shader:\n"

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->log:Ljava/lang/String;

    .line 219
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->log:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->log:Ljava/lang/String;

    return v3

    :cond_2
    return v2
.end method


# virtual methods
.method public begin()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 687
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->bind()V

    return-void
.end method

.method public bind()V
    .locals 2

    .line 691
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 692
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->checkManaged()V

    .line 693
    iget v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->program:I

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glUseProgram(I)V

    return-void
.end method

.method protected createProgram()I
    .locals 1

    .line 228
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 229
    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/GL20;->glCreateProgram()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public disableVertexAttribute(I)V
    .locals 1

    .line 723
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 724
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->checkManaged()V

    .line 725
    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL20;->glDisableVertexAttribArray(I)V

    return-void
.end method

.method public disableVertexAttribute(Ljava/lang/String;)V
    .locals 2

    .line 715
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 716
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->checkManaged()V

    .line 717
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->fetchAttributeLocation(Ljava/lang/String;)I

    move-result p1

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    return-void

    .line 719
    :cond_0
    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL20;->glDisableVertexAttribArray(I)V

    return-void
.end method

.method public dispose()V
    .locals 2

    .line 703
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    const/4 v1, 0x0

    .line 704
    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glUseProgram(I)V

    .line 705
    iget v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->vertexShaderHandle:I

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glDeleteShader(I)V

    .line 706
    iget v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->fragmentShaderHandle:I

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glDeleteShader(I)V

    .line 707
    iget v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->program:I

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glDeleteProgram(I)V

    .line 708
    sget-object v0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->shaders:Lcom/badlogic/gdx/utils/ObjectMap;

    sget-object v1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/Array;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/badlogic/gdx/utils/Array;->removeValue(Ljava/lang/Object;Z)Z

    :cond_0
    return-void
.end method

.method public enableVertexAttribute(I)V
    .locals 1

    .line 740
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 741
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->checkManaged()V

    .line 742
    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL20;->glEnableVertexAttribArray(I)V

    return-void
.end method

.method public enableVertexAttribute(Ljava/lang/String;)V
    .locals 2

    .line 732
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 733
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->checkManaged()V

    .line 734
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->fetchAttributeLocation(Ljava/lang/String;)I

    move-result p1

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    return-void

    .line 736
    :cond_0
    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL20;->glEnableVertexAttribArray(I)V

    return-void
.end method

.method public end()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public fetchUniformLocation(Ljava/lang/String;Z)I
    .locals 2

    .line 301
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->uniforms:Lcom/badlogic/gdx/utils/ObjectIntMap;

    const/4 v1, -0x2

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/ObjectIntMap;->get(Ljava/lang/Object;I)I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 302
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    iget v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->program:I

    invoke-interface {v0, v1, p1}, Lcom/badlogic/gdx/graphics/GL20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    if-eqz p2, :cond_1

    .line 304
    iget-boolean p2, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->isCompiled:Z

    if-eqz p2, :cond_0

    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No uniform with name \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' in shader"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 305
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "An attempted fetch uniform from uncompiled shader \n"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->getLog()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 307
    :cond_1
    iget-object p2, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->uniforms:Lcom/badlogic/gdx/utils/ObjectIntMap;

    invoke-virtual {p2, p1, v0}, Lcom/badlogic/gdx/utils/ObjectIntMap;->put(Ljava/lang/Object;I)V

    :cond_2
    return v0
.end method

.method public getAttributeLocation(Ljava/lang/String;)I
    .locals 2

    .line 865
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->attributes:Lcom/badlogic/gdx/utils/ObjectIntMap;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/ObjectIntMap;->get(Ljava/lang/Object;I)I

    move-result p1

    return p1
.end method

.method public getAttributeSize(Ljava/lang/String;)I
    .locals 2

    .line 871
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->attributeSizes:Lcom/badlogic/gdx/utils/ObjectIntMap;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/ObjectIntMap;->get(Ljava/lang/Object;I)I

    move-result p1

    return p1
.end method

.method public getAttributeType(Ljava/lang/String;)I
    .locals 2

    .line 859
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->attributeTypes:Lcom/badlogic/gdx/utils/ObjectIntMap;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/ObjectIntMap;->get(Ljava/lang/Object;I)I

    move-result p1

    return p1
.end method

.method public getAttributes()[Ljava/lang/String;
    .locals 1

    .line 900
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->attributeNames:[Ljava/lang/String;

    return-object v0
.end method

.method public getFragmentShaderSource()Ljava/lang/String;
    .locals 1

    .line 915
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->fragmentShaderSource:Ljava/lang/String;

    return-object v0
.end method

.method public getHandle()I
    .locals 1

    .line 920
    iget v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->program:I

    return v0
.end method

.method public getLog()Ljava/lang/String;
    .locals 2

    .line 264
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->isCompiled:Z

    if-eqz v0, :cond_0

    .line 268
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    iget v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->program:I

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->log:Ljava/lang/String;

    return-object v0

    .line 272
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->log:Ljava/lang/String;

    return-object v0
.end method

.method public getUniformLocation(Ljava/lang/String;)I
    .locals 2

    .line 889
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->uniforms:Lcom/badlogic/gdx/utils/ObjectIntMap;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/ObjectIntMap;->get(Ljava/lang/Object;I)I

    move-result p1

    return p1
.end method

.method public getUniformSize(Ljava/lang/String;)I
    .locals 2

    .line 895
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->uniformSizes:Lcom/badlogic/gdx/utils/ObjectIntMap;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/ObjectIntMap;->get(Ljava/lang/Object;I)I

    move-result p1

    return p1
.end method

.method public getUniformType(Ljava/lang/String;)I
    .locals 2

    .line 883
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->uniformTypes:Lcom/badlogic/gdx/utils/ObjectIntMap;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/ObjectIntMap;->get(Ljava/lang/Object;I)I

    move-result p1

    return p1
.end method

.method public getUniforms()[Ljava/lang/String;
    .locals 1

    .line 905
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->uniformNames:[Ljava/lang/String;

    return-object v0
.end method

.method public getVertexShaderSource()Ljava/lang/String;
    .locals 1

    .line 910
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->vertexShaderSource:Ljava/lang/String;

    return-object v0
.end method

.method public hasAttribute(Ljava/lang/String;)Z
    .locals 1

    .line 853
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->attributes:Lcom/badlogic/gdx/utils/ObjectIntMap;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ObjectIntMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hasUniform(Ljava/lang/String;)Z
    .locals 1

    .line 877
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->uniforms:Lcom/badlogic/gdx/utils/ObjectIntMap;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ObjectIntMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isCompiled()Z
    .locals 1

    .line 278
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->isCompiled:Z

    return v0
.end method

.method public setAttributef(Ljava/lang/String;FFFF)V
    .locals 6

    .line 802
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 803
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->fetchAttributeLocation(Ljava/lang/String;)I

    move-result v1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 804
    invoke-interface/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/GL20;->glVertexAttrib4f(IFFFF)V

    return-void
.end method

.method public setUniform1fv(I[FII)V
    .locals 1

    .line 468
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 469
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->checkManaged()V

    .line 470
    invoke-interface {v0, p1, p4, p2, p3}, Lcom/badlogic/gdx/graphics/GL20;->glUniform1fv(II[FI)V

    return-void
.end method

.method public setUniform1fv(Ljava/lang/String;[FII)V
    .locals 1

    .line 461
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 462
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->checkManaged()V

    .line 463
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->fetchUniformLocation(Ljava/lang/String;)I

    move-result p1

    .line 464
    invoke-interface {v0, p1, p4, p2, p3}, Lcom/badlogic/gdx/graphics/GL20;->glUniform1fv(II[FI)V

    return-void
.end method

.method public setUniform2fv(I[FII)V
    .locals 1

    .line 481
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 482
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->checkManaged()V

    .line 483
    div-int/lit8 p4, p4, 0x2

    invoke-interface {v0, p1, p4, p2, p3}, Lcom/badlogic/gdx/graphics/GL20;->glUniform2fv(II[FI)V

    return-void
.end method

.method public setUniform2fv(Ljava/lang/String;[FII)V
    .locals 1

    .line 474
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 475
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->checkManaged()V

    .line 476
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->fetchUniformLocation(Ljava/lang/String;)I

    move-result p1

    .line 477
    div-int/lit8 p4, p4, 0x2

    invoke-interface {v0, p1, p4, p2, p3}, Lcom/badlogic/gdx/graphics/GL20;->glUniform2fv(II[FI)V

    return-void
.end method

.method public setUniform3fv(I[FII)V
    .locals 1

    .line 494
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 495
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->checkManaged()V

    .line 496
    div-int/lit8 p4, p4, 0x3

    invoke-interface {v0, p1, p4, p2, p3}, Lcom/badlogic/gdx/graphics/GL20;->glUniform3fv(II[FI)V

    return-void
.end method

.method public setUniform3fv(Ljava/lang/String;[FII)V
    .locals 1

    .line 487
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 488
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->checkManaged()V

    .line 489
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->fetchUniformLocation(Ljava/lang/String;)I

    move-result p1

    .line 490
    div-int/lit8 p4, p4, 0x3

    invoke-interface {v0, p1, p4, p2, p3}, Lcom/badlogic/gdx/graphics/GL20;->glUniform3fv(II[FI)V

    return-void
.end method

.method public setUniform4fv(I[FII)V
    .locals 1

    .line 507
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 508
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->checkManaged()V

    .line 509
    div-int/lit8 p4, p4, 0x4

    invoke-interface {v0, p1, p4, p2, p3}, Lcom/badlogic/gdx/graphics/GL20;->glUniform4fv(II[FI)V

    return-void
.end method

.method public setUniform4fv(Ljava/lang/String;[FII)V
    .locals 1

    .line 500
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 501
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->checkManaged()V

    .line 502
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->fetchUniformLocation(Ljava/lang/String;)I

    move-result p1

    .line 503
    div-int/lit8 p4, p4, 0x4

    invoke-interface {v0, p1, p4, p2, p3}, Lcom/badlogic/gdx/graphics/GL20;->glUniform4fv(II[FI)V

    return-void
.end method

.method public setUniformMatrix(ILcom/badlogic/gdx/math/Matrix3;)V
    .locals 1

    const/4 v0, 0x0

    .line 557
    invoke-virtual {p0, p1, p2, v0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformMatrix(ILcom/badlogic/gdx/math/Matrix3;Z)V

    return-void
.end method

.method public setUniformMatrix(ILcom/badlogic/gdx/math/Matrix3;Z)V
    .locals 6

    .line 561
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 562
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->checkManaged()V

    .line 563
    iget-object v4, p2, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v2, 0x1

    const/4 v5, 0x0

    move v1, p1

    move v3, p3

    invoke-interface/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/GL20;->glUniformMatrix3fv(IIZ[FI)V

    return-void
.end method

.method public setUniformMatrix(ILcom/badlogic/gdx/math/Matrix4;)V
    .locals 1

    const/4 v0, 0x0

    .line 530
    invoke-virtual {p0, p1, p2, v0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformMatrix(ILcom/badlogic/gdx/math/Matrix4;Z)V

    return-void
.end method

.method public setUniformMatrix(ILcom/badlogic/gdx/math/Matrix4;Z)V
    .locals 6

    .line 534
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 535
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->checkManaged()V

    .line 536
    iget-object v4, p2, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v2, 0x1

    const/4 v5, 0x0

    move v1, p1

    move v3, p3

    invoke-interface/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/GL20;->glUniformMatrix4fv(IIZ[FI)V

    return-void
.end method

.method public setUniformMatrix(Ljava/lang/String;Lcom/badlogic/gdx/math/Matrix3;)V
    .locals 1

    const/4 v0, 0x0

    .line 544
    invoke-virtual {p0, p1, p2, v0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformMatrix(Ljava/lang/String;Lcom/badlogic/gdx/math/Matrix3;Z)V

    return-void
.end method

.method public setUniformMatrix(Ljava/lang/String;Lcom/badlogic/gdx/math/Matrix3;Z)V
    .locals 0

    .line 553
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->fetchUniformLocation(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformMatrix(ILcom/badlogic/gdx/math/Matrix3;Z)V

    return-void
.end method

.method public setUniformMatrix(Ljava/lang/String;Lcom/badlogic/gdx/math/Matrix4;)V
    .locals 1

    const/4 v0, 0x0

    .line 517
    invoke-virtual {p0, p1, p2, v0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformMatrix(Ljava/lang/String;Lcom/badlogic/gdx/math/Matrix4;Z)V

    return-void
.end method

.method public setUniformMatrix(Ljava/lang/String;Lcom/badlogic/gdx/math/Matrix4;Z)V
    .locals 0

    .line 526
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->fetchUniformLocation(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformMatrix(ILcom/badlogic/gdx/math/Matrix4;Z)V

    return-void
.end method

.method public setUniformMatrix3fv(Ljava/lang/String;Ljava/nio/FloatBuffer;IZ)V
    .locals 2

    .line 572
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 573
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->checkManaged()V

    const/4 v1, 0x0

    .line 574
    invoke-virtual {p2, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 575
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->fetchUniformLocation(Ljava/lang/String;)I

    move-result p1

    .line 576
    invoke-interface {v0, p1, p3, p4, p2}, Lcom/badlogic/gdx/graphics/GL20;->glUniformMatrix3fv(IIZLjava/nio/FloatBuffer;)V

    return-void
.end method

.method public setUniformMatrix4fv(I[FII)V
    .locals 6

    .line 593
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 594
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->checkManaged()V

    .line 595
    div-int/lit8 v2, p4, 0x10

    const/4 v3, 0x0

    move v1, p1

    move-object v4, p2

    move v5, p3

    invoke-interface/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/GL20;->glUniformMatrix4fv(IIZ[FI)V

    return-void
.end method

.method public setUniformMatrix4fv(Ljava/lang/String;Ljava/nio/FloatBuffer;IZ)V
    .locals 2

    .line 585
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 586
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->checkManaged()V

    const/4 v1, 0x0

    .line 587
    invoke-virtual {p2, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 588
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->fetchUniformLocation(Ljava/lang/String;)I

    move-result p1

    .line 589
    invoke-interface {v0, p1, p3, p4, p2}, Lcom/badlogic/gdx/graphics/GL20;->glUniformMatrix4fv(IIZLjava/nio/FloatBuffer;)V

    return-void
.end method

.method public setUniformMatrix4fv(Ljava/lang/String;[FII)V
    .locals 0

    .line 599
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->fetchUniformLocation(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformMatrix4fv(I[FII)V

    return-void
.end method

.method public setUniformf(IF)V
    .locals 1

    .line 398
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 399
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->checkManaged()V

    .line 400
    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL20;->glUniform1f(IF)V

    return-void
.end method

.method public setUniformf(IFF)V
    .locals 1

    .line 416
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 417
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->checkManaged()V

    .line 418
    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL20;->glUniform2f(IFF)V

    return-void
.end method

.method public setUniformf(IFFF)V
    .locals 1

    .line 435
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 436
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->checkManaged()V

    .line 437
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL20;->glUniform3f(IFFF)V

    return-void
.end method

.method public setUniformf(IFFFF)V
    .locals 6

    .line 455
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 456
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->checkManaged()V

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 457
    invoke-interface/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/GL20;->glUniform4f(IFFFF)V

    return-void
.end method

.method public setUniformf(ILcom/badlogic/gdx/graphics/Color;)V
    .locals 6

    .line 635
    iget v2, p2, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v3, p2, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v4, p2, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v5, p2, Lcom/badlogic/gdx/graphics/Color;->a:F

    move-object v0, p0

    move v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(IFFFF)V

    return-void
.end method

.method public setUniformf(ILcom/badlogic/gdx/math/Vector2;)V
    .locals 1

    .line 611
    iget v0, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget p2, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {p0, p1, v0, p2}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(IFF)V

    return-void
.end method

.method public setUniformf(ILcom/badlogic/gdx/math/Vector3;)V
    .locals 2

    .line 623
    iget v0, p2, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v1, p2, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget p2, p2, Lcom/badlogic/gdx/math/Vector3;->z:F

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(IFFF)V

    return-void
.end method

.method public setUniformf(Ljava/lang/String;F)V
    .locals 1

    .line 391
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 392
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->checkManaged()V

    .line 393
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->fetchUniformLocation(Ljava/lang/String;)I

    move-result p1

    .line 394
    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL20;->glUniform1f(IF)V

    return-void
.end method

.method public setUniformf(Ljava/lang/String;FF)V
    .locals 1

    .line 409
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 410
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->checkManaged()V

    .line 411
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->fetchUniformLocation(Ljava/lang/String;)I

    move-result p1

    .line 412
    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL20;->glUniform2f(IFF)V

    return-void
.end method

.method public setUniformf(Ljava/lang/String;FFF)V
    .locals 1

    .line 428
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 429
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->checkManaged()V

    .line 430
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->fetchUniformLocation(Ljava/lang/String;)I

    move-result p1

    .line 431
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL20;->glUniform3f(IFFF)V

    return-void
.end method

.method public setUniformf(Ljava/lang/String;FFFF)V
    .locals 6

    .line 448
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 449
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->checkManaged()V

    .line 450
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->fetchUniformLocation(Ljava/lang/String;)I

    move-result v1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 451
    invoke-interface/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/GL20;->glUniform4f(IFFFF)V

    return-void
.end method

.method public setUniformf(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V
    .locals 6

    .line 631
    iget v2, p2, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v3, p2, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v4, p2, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v5, p2, Lcom/badlogic/gdx/graphics/Color;->a:F

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;FFFF)V

    return-void
.end method

.method public setUniformf(Ljava/lang/String;Lcom/badlogic/gdx/math/Vector2;)V
    .locals 1

    .line 607
    iget v0, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget p2, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {p0, p1, v0, p2}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;FF)V

    return-void
.end method

.method public setUniformf(Ljava/lang/String;Lcom/badlogic/gdx/math/Vector3;)V
    .locals 2

    .line 619
    iget v0, p2, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v1, p2, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget p2, p2, Lcom/badlogic/gdx/math/Vector3;->z:F

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;FFF)V

    return-void
.end method

.method public setUniformi(II)V
    .locals 1

    .line 324
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 325
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->checkManaged()V

    .line 326
    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL20;->glUniform1i(II)V

    return-void
.end method

.method public setUniformi(III)V
    .locals 1

    .line 342
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 343
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->checkManaged()V

    .line 344
    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL20;->glUniform2i(III)V

    return-void
.end method

.method public setUniformi(IIII)V
    .locals 1

    .line 361
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 362
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->checkManaged()V

    .line 363
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL20;->glUniform3i(IIII)V

    return-void
.end method

.method public setUniformi(IIIII)V
    .locals 6

    .line 381
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 382
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->checkManaged()V

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 383
    invoke-interface/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/GL20;->glUniform4i(IIIII)V

    return-void
.end method

.method public setUniformi(Ljava/lang/String;I)V
    .locals 1

    .line 317
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 318
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->checkManaged()V

    .line 319
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->fetchUniformLocation(Ljava/lang/String;)I

    move-result p1

    .line 320
    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL20;->glUniform1i(II)V

    return-void
.end method

.method public setUniformi(Ljava/lang/String;II)V
    .locals 1

    .line 335
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 336
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->checkManaged()V

    .line 337
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->fetchUniformLocation(Ljava/lang/String;)I

    move-result p1

    .line 338
    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL20;->glUniform2i(III)V

    return-void
.end method

.method public setUniformi(Ljava/lang/String;III)V
    .locals 1

    .line 354
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 355
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->checkManaged()V

    .line 356
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->fetchUniformLocation(Ljava/lang/String;)I

    move-result p1

    .line 357
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL20;->glUniform3i(IIII)V

    return-void
.end method

.method public setUniformi(Ljava/lang/String;IIII)V
    .locals 6

    .line 374
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 375
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->checkManaged()V

    .line 376
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->fetchUniformLocation(Ljava/lang/String;)I

    move-result v1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 377
    invoke-interface/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/GL20;->glUniform4i(IIIII)V

    return-void
.end method

.method public setVertexAttribute(IIIZII)V
    .locals 7

    .line 679
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 680
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->checkManaged()V

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    .line 681
    invoke-interface/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/GL20;->glVertexAttribPointer(IIIZII)V

    return-void
.end method

.method public setVertexAttribute(IIIZILjava/nio/Buffer;)V
    .locals 7

    .line 656
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 657
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->checkManaged()V

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    .line 658
    invoke-interface/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/GL20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    return-void
.end method

.method public setVertexAttribute(Ljava/lang/String;IIZII)V
    .locals 7

    .line 671
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 672
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->checkManaged()V

    .line 673
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->fetchAttributeLocation(Ljava/lang/String;)I

    move-result v1

    const/4 p1, -0x1

    if-ne v1, p1, :cond_0

    return-void

    :cond_0
    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    .line 675
    invoke-interface/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/GL20;->glVertexAttribPointer(IIIZII)V

    return-void
.end method

.method public setVertexAttribute(Ljava/lang/String;IIZILjava/nio/Buffer;)V
    .locals 7

    .line 648
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 649
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->checkManaged()V

    .line 650
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->fetchAttributeLocation(Ljava/lang/String;)I

    move-result v1

    const/4 p1, -0x1

    if-ne v1, p1, :cond_0

    return-void

    :cond_0
    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    .line 652
    invoke-interface/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/GL20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    return-void
.end method
