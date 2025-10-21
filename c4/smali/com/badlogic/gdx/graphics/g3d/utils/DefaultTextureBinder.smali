.class public final Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;
.super Ljava/lang/Object;
.source "DefaultTextureBinder.java"

# interfaces
.implements Lcom/badlogic/gdx/graphics/g3d/utils/TextureBinder;


# static fields
.field public static final LRU:I = 0x1

.field public static final MAX_GLES_UNITS:I = 0x20

.field public static final ROUNDROBIN:I


# instance fields
.field private bindCount:I

.field private final count:I

.field private currentTexture:I

.field private final method:I

.field private final offset:I

.field private reuseCount:I

.field private reused:Z

.field private final tempDesc:Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;

.field private final textures:[Lcom/badlogic/gdx/graphics/GLTexture;

.field private unitsLRU:[I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 53
    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    const/4 v0, -0x1

    .line 58
    invoke-direct {p0, p1, p2, v0}, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;-><init>(III)V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 2

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 48
    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->reuseCount:I

    .line 49
    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->bindCount:I

    .line 102
    new-instance v1, Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;

    invoke-direct {v1}, Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;-><init>()V

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->tempDesc:Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;

    .line 139
    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->currentTexture:I

    .line 62
    invoke-static {}, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->getMaxTextureUnits()I

    move-result v0

    const/16 v1, 0x20

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-gez p3, :cond_0

    sub-int p3, v0, p2

    :cond_0
    if-ltz p2, :cond_2

    if-ltz p3, :cond_2

    add-int v1, p2, p3

    if-gt v1, v0, :cond_2

    .line 66
    iput p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->method:I

    .line 67
    iput p2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->offset:I

    .line 68
    iput p3, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->count:I

    .line 69
    new-array p2, p3, [Lcom/badlogic/gdx/graphics/GLTexture;

    iput-object p2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->textures:[Lcom/badlogic/gdx/graphics/GLTexture;

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    .line 70
    new-array p1, p3, [I

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->unitsLRU:[I

    return-void

    .line 65
    :cond_2
    new-instance p1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string p2, "Illegal arguments"

    invoke-direct {p1, p2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final bindTexture(Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;Z)I
    .locals 4

    .line 112
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;->texture:Lcom/badlogic/gdx/graphics/GLTexture;

    const/4 v1, 0x0

    .line 113
    iput-boolean v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->reused:Z

    .line 115
    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->method:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-eq v1, v2, :cond_0

    const/4 p1, -0x1

    return p1

    .line 120
    :cond_0
    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->offset:I

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->bindTextureLRU(Lcom/badlogic/gdx/graphics/GLTexture;)I

    move-result v3

    goto :goto_0

    .line 117
    :cond_1
    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->offset:I

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->bindTextureRoundRobin(Lcom/badlogic/gdx/graphics/GLTexture;)I

    move-result v3

    :goto_0
    add-int/2addr v1, v3

    .line 126
    iget-boolean v3, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->reused:Z

    if-eqz v3, :cond_3

    .line 127
    iget v3, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->reuseCount:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->reuseCount:I

    if-eqz p2, :cond_2

    .line 129
    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/GLTexture;->bind(I)V

    goto :goto_1

    .line 131
    :cond_2
    sget-object p2, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    const v2, 0x84c0

    add-int/2addr v2, v1

    invoke-interface {p2, v2}, Lcom/badlogic/gdx/graphics/GL20;->glActiveTexture(I)V

    goto :goto_1

    .line 133
    :cond_3
    iget p2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->bindCount:I

    add-int/2addr p2, v2

    iput p2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->bindCount:I

    .line 134
    :goto_1
    iget-object p2, p1, Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;->uWrap:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    iget-object v2, p1, Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;->vWrap:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    invoke-virtual {v0, p2, v2}, Lcom/badlogic/gdx/graphics/GLTexture;->unsafeSetWrap(Lcom/badlogic/gdx/graphics/Texture$TextureWrap;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)V

    .line 135
    iget-object p2, p1, Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;->minFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    iget-object p1, p1, Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;->magFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-virtual {v0, p2, p1}, Lcom/badlogic/gdx/graphics/GLTexture;->unsafeSetFilter(Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    return v1
.end method

.method private final bindTextureLRU(Lcom/badlogic/gdx/graphics/GLTexture;)I
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 157
    :goto_0
    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->count:I

    const/4 v3, 0x1

    if-ge v1, v2, :cond_2

    .line 158
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->unitsLRU:[I

    aget v4, v4, v1

    .line 159
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->textures:[Lcom/badlogic/gdx/graphics/GLTexture;

    aget-object v6, v5, v4

    if-ne v6, p1, :cond_0

    .line 160
    iput-boolean v3, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->reused:Z

    goto :goto_1

    .line 163
    :cond_0
    aget-object v4, v5, v4

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-lt v1, v2, :cond_3

    add-int/lit8 v1, v2, -0x1

    .line 168
    :cond_3
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->unitsLRU:[I

    aget v2, v2, v1

    :goto_2
    if-lez v1, :cond_4

    .line 170
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->unitsLRU:[I

    add-int/lit8 v4, v1, -0x1

    aget v4, v3, v4

    aput v4, v3, v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 173
    :cond_4
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->unitsLRU:[I

    aput v2, v1, v0

    .line 174
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->reused:Z

    if-nez v0, :cond_5

    .line 175
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->textures:[Lcom/badlogic/gdx/graphics/GLTexture;

    aput-object p1, v0, v2

    .line 176
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->offset:I

    add-int/2addr v0, v2

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/GLTexture;->bind(I)V

    :cond_5
    return v2
.end method

.method private final bindTextureRoundRobin(Lcom/badlogic/gdx/graphics/GLTexture;)I
    .locals 4

    const/4 v0, 0x0

    .line 142
    :goto_0
    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->count:I

    const/4 v2, 0x1

    if-ge v0, v1, :cond_1

    .line 143
    iget v3, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->currentTexture:I

    add-int/2addr v3, v0

    rem-int/2addr v3, v1

    .line 144
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->textures:[Lcom/badlogic/gdx/graphics/GLTexture;

    aget-object v1, v1, v3

    if-ne v1, p1, :cond_0

    .line 145
    iput-boolean v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->reused:Z

    return v3

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 149
    :cond_1
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->currentTexture:I

    add-int/2addr v0, v2

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->currentTexture:I

    .line 150
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->textures:[Lcom/badlogic/gdx/graphics/GLTexture;

    aput-object p1, v1, v0

    .line 151
    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->offset:I

    add-int/2addr v1, v0

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/GLTexture;->bind(I)V

    .line 152
    iget p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->currentTexture:I

    return p1
.end method

.method private static getMaxTextureUnits()I
    .locals 3

    const/16 v0, 0x10

    .line 74
    invoke-static {v0}, Lcom/badlogic/gdx/utils/BufferUtils;->newIntBuffer(I)Ljava/nio/IntBuffer;

    move-result-object v0

    .line 75
    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    const v2, 0x8872

    invoke-interface {v1, v2, v0}, Lcom/badlogic/gdx/graphics/GL20;->glGetIntegerv(ILjava/nio/IntBuffer;)V

    const/4 v1, 0x0

    .line 76
    invoke-virtual {v0, v1}, Ljava/nio/IntBuffer;->get(I)I

    move-result v0

    return v0
.end method


# virtual methods
.method public begin()V
    .locals 3

    const/4 v0, 0x0

    .line 81
    :goto_0
    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->count:I

    if-ge v0, v1, :cond_1

    .line 82
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->textures:[Lcom/badlogic/gdx/graphics/GLTexture;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 83
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->unitsLRU:[I

    if-eqz v1, :cond_0

    aput v0, v1, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final bind(Lcom/badlogic/gdx/graphics/GLTexture;)I
    .locals 6

    .line 106
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->tempDesc:Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;->set(Lcom/badlogic/gdx/graphics/GLTexture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)V

    .line 107
    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->tempDesc:Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->bindTexture(Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;Z)I

    move-result p1

    return p1
.end method

.method public final bind(Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;)I
    .locals 1

    const/4 v0, 0x0

    .line 99
    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->bindTexture(Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;Z)I

    move-result p1

    return p1
.end method

.method public end()V
    .locals 2

    .line 94
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    const v1, 0x84c0

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glActiveTexture(I)V

    return-void
.end method

.method public final getBindCount()I
    .locals 1

    .line 183
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->bindCount:I

    return v0
.end method

.method public final getReuseCount()I
    .locals 1

    .line 188
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->reuseCount:I

    return v0
.end method

.method public final resetCounts()V
    .locals 1

    const/4 v0, 0x0

    .line 193
    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->reuseCount:I

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->bindCount:I

    return-void
.end method
