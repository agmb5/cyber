.class public Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;
.super Ljava/lang/Object;
.source "MeshBuilder.java"

# interfaces
.implements Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;


# static fields
.field public static final MAX_INDEX:I = 0xffff

.field public static final MAX_VERTICES:I = 0x10000

.field private static indicesMap:Lcom/badlogic/gdx/utils/IntIntMap;

.field private static final tmpIndices:Lcom/badlogic/gdx/utils/ShortArray;

.field private static final tmpVertices:Lcom/badlogic/gdx/utils/FloatArray;

.field private static final vTmp:Lcom/badlogic/gdx/math/Vector3;


# instance fields
.field private attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

.field private biNorOffset:I

.field private final bounds:Lcom/badlogic/gdx/math/collision/BoundingBox;

.field private colOffset:I

.field private colSize:I

.field private final color:Lcom/badlogic/gdx/graphics/Color;

.field private cpOffset:I

.field private hasColor:Z

.field private hasUVTransform:Z

.field private indices:Lcom/badlogic/gdx/utils/ShortArray;

.field private istart:I

.field private lastIndex:I

.field private norOffset:I

.field private final normalTransform:Lcom/badlogic/gdx/math/Matrix3;

.field private part:Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

.field private parts:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;",
            ">;"
        }
    .end annotation
.end field

.field private posOffset:I

.field private posSize:I

.field private final positionTransform:Lcom/badlogic/gdx/math/Matrix4;

.field private primitiveType:I

.field private stride:I

.field private tangentOffset:I

.field private final tempC1:Lcom/badlogic/gdx/graphics/Color;

.field private final tmpNormal:Lcom/badlogic/gdx/math/Vector3;

.field private uOffset:F

.field private uScale:F

.field private uvOffset:I

.field private vOffset:F

.field private vScale:F

.field private final vertTmp1:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

.field private final vertTmp2:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

.field private final vertTmp3:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

.field private final vertTmp4:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

.field private vertex:[F

.field private vertexTransformationEnabled:Z

.field private vertices:Lcom/badlogic/gdx/utils/FloatArray;

.field private vindex:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 61
    new-instance v0, Lcom/badlogic/gdx/utils/ShortArray;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ShortArray;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->tmpIndices:Lcom/badlogic/gdx/utils/ShortArray;

    .line 62
    new-instance v0, Lcom/badlogic/gdx/utils/FloatArray;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/FloatArray;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->tmpVertices:Lcom/badlogic/gdx/utils/FloatArray;

    .line 480
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vTmp:Lcom/badlogic/gdx/math/Vector3;

    const/4 v0, 0x0

    .line 767
    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->indicesMap:Lcom/badlogic/gdx/utils/IntIntMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertTmp1:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    .line 65
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertTmp2:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    .line 66
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertTmp3:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    .line 67
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertTmp4:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    .line 69
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/Color;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->tempC1:Lcom/badlogic/gdx/graphics/Color;

    .line 74
    new-instance v0, Lcom/badlogic/gdx/utils/FloatArray;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/FloatArray;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertices:Lcom/badlogic/gdx/utils/FloatArray;

    .line 76
    new-instance v0, Lcom/badlogic/gdx/utils/ShortArray;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ShortArray;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->indices:Lcom/badlogic/gdx/utils/ShortArray;

    .line 104
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->parts:Lcom/badlogic/gdx/utils/Array;

    .line 106
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(Lcom/badlogic/gdx/graphics/Color;)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->color:Lcom/badlogic/gdx/graphics/Color;

    const/4 v0, 0x0

    .line 107
    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->hasColor:Z

    const/4 v1, 0x0

    .line 111
    iput v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->uOffset:F

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->uScale:F

    iput v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vOffset:F

    iput v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vScale:F

    .line 112
    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->hasUVTransform:Z

    .line 115
    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertexTransformationEnabled:Z

    .line 116
    new-instance v0, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->positionTransform:Lcom/badlogic/gdx/math/Matrix4;

    .line 117
    new-instance v0, Lcom/badlogic/gdx/math/Matrix3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Matrix3;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->normalTransform:Lcom/badlogic/gdx/math/Matrix3;

    .line 118
    new-instance v0, Lcom/badlogic/gdx/math/collision/BoundingBox;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/collision/BoundingBox;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->bounds:Lcom/badlogic/gdx/math/collision/BoundingBox;

    const/4 v0, -0x1

    .line 473
    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->lastIndex:I

    .line 545
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->tmpNormal:Lcom/badlogic/gdx/math/Vector3;

    return-void
.end method

.method private final addVertex([FI)V
    .locals 6

    .line 511
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertices:Lcom/badlogic/gdx/utils/FloatArray;

    iget v0, v0, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    .line 512
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertices:Lcom/badlogic/gdx/utils/FloatArray;

    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->stride:I

    invoke-virtual {v1, p1, p2, v2}, Lcom/badlogic/gdx/utils/FloatArray;->addAll([FII)V

    .line 513
    iget p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vindex:I

    add-int/lit8 p2, p1, 0x1

    iput p2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vindex:I

    iput p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->lastIndex:I

    .line 515
    iget-boolean p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertexTransformationEnabled:Z

    const/4 p2, 0x3

    if-eqz p1, :cond_2

    .line 516
    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertices:Lcom/badlogic/gdx/utils/FloatArray;

    iget-object p1, p1, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->posOffset:I

    add-int/2addr v1, v0

    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->posSize:I

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->positionTransform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-static {p1, v1, v2, v3}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->transformPosition([FIILcom/badlogic/gdx/math/Matrix4;)V

    .line 517
    iget p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->norOffset:I

    if-ltz p1, :cond_0

    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertices:Lcom/badlogic/gdx/utils/FloatArray;

    iget-object p1, p1, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->norOffset:I

    add-int/2addr v1, v0

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->normalTransform:Lcom/badlogic/gdx/math/Matrix3;

    invoke-static {p1, v1, p2, v2}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->transformNormal([FIILcom/badlogic/gdx/math/Matrix3;)V

    .line 518
    :cond_0
    iget p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->biNorOffset:I

    if-ltz p1, :cond_1

    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertices:Lcom/badlogic/gdx/utils/FloatArray;

    iget-object p1, p1, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->biNorOffset:I

    add-int/2addr v1, v0

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->normalTransform:Lcom/badlogic/gdx/math/Matrix3;

    invoke-static {p1, v1, p2, v2}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->transformNormal([FIILcom/badlogic/gdx/math/Matrix3;)V

    .line 519
    :cond_1
    iget p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->tangentOffset:I

    if-ltz p1, :cond_2

    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertices:Lcom/badlogic/gdx/utils/FloatArray;

    iget-object p1, p1, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->tangentOffset:I

    add-int/2addr v1, v0

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->normalTransform:Lcom/badlogic/gdx/math/Matrix3;

    invoke-static {p1, v1, p2, v2}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->transformNormal([FIILcom/badlogic/gdx/math/Matrix3;)V

    .line 522
    :cond_2
    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertices:Lcom/badlogic/gdx/utils/FloatArray;

    iget-object p1, p1, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->posOffset:I

    add-int/2addr v1, v0

    aget p1, p1, v1

    .line 523
    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->posSize:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-le v1, v3, :cond_3

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertices:Lcom/badlogic/gdx/utils/FloatArray;

    iget-object v1, v1, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    iget v4, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->posOffset:I

    add-int/2addr v4, v0

    add-int/2addr v4, v3

    aget v1, v1, v4

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    .line 524
    :goto_0
    iget v4, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->posSize:I

    const/4 v5, 0x2

    if-le v4, v5, :cond_4

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertices:Lcom/badlogic/gdx/utils/FloatArray;

    iget-object v2, v2, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    iget v4, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->posOffset:I

    add-int/2addr v4, v0

    add-int/2addr v4, v5

    aget v2, v2, v4

    .line 525
    :cond_4
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->bounds:Lcom/badlogic/gdx/math/collision/BoundingBox;

    invoke-virtual {v4, p1, v1, v2}, Lcom/badlogic/gdx/math/collision/BoundingBox;->ext(FFF)Lcom/badlogic/gdx/math/collision/BoundingBox;

    .line 527
    iget-boolean p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->hasColor:Z

    if-eqz p1, :cond_6

    .line 528
    iget p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->colOffset:I

    if-ltz p1, :cond_5

    .line 529
    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertices:Lcom/badlogic/gdx/utils/FloatArray;

    iget-object p1, p1, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->colOffset:I

    add-int/2addr v1, v0

    aget v2, p1, v1

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->r:F

    mul-float v2, v2, v4

    aput v2, p1, v1

    .line 530
    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertices:Lcom/badlogic/gdx/utils/FloatArray;

    iget-object p1, p1, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->colOffset:I

    add-int/2addr v1, v0

    add-int/2addr v1, v3

    aget v2, p1, v1

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->g:F

    mul-float v2, v2, v4

    aput v2, p1, v1

    .line 531
    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertices:Lcom/badlogic/gdx/utils/FloatArray;

    iget-object p1, p1, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->colOffset:I

    add-int/2addr v1, v0

    add-int/2addr v1, v5

    aget v2, p1, v1

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    mul-float v2, v2, v4

    aput v2, p1, v1

    .line 532
    iget p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->colSize:I

    if-le p1, p2, :cond_6

    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertices:Lcom/badlogic/gdx/utils/FloatArray;

    iget-object p1, p1, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->colOffset:I

    add-int/2addr v1, v0

    add-int/2addr v1, p2

    aget p2, p1, v1

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float p2, p2, v2

    aput p2, p1, v1

    goto :goto_1

    .line 533
    :cond_5
    iget p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->cpOffset:I

    if-ltz p1, :cond_6

    .line 534
    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->tempC1:Lcom/badlogic/gdx/graphics/Color;

    iget-object p2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertices:Lcom/badlogic/gdx/utils/FloatArray;

    iget-object p2, p2, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->cpOffset:I

    add-int/2addr v1, v0

    aget p2, p2, v1

    invoke-static {p1, p2}, Lcom/badlogic/gdx/graphics/Color;->abgr8888ToColor(Lcom/badlogic/gdx/graphics/Color;F)V

    .line 535
    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertices:Lcom/badlogic/gdx/utils/FloatArray;

    iget-object p1, p1, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    iget p2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->cpOffset:I

    add-int/2addr p2, v0

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->tempC1:Lcom/badlogic/gdx/graphics/Color;

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/graphics/Color;->mul(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v1

    aput v1, p1, p2

    .line 539
    :cond_6
    :goto_1
    iget-boolean p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->hasUVTransform:Z

    if-eqz p1, :cond_7

    iget p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->uvOffset:I

    if-ltz p1, :cond_7

    .line 540
    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertices:Lcom/badlogic/gdx/utils/FloatArray;

    iget-object p1, p1, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    iget p2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->uvOffset:I

    add-int/2addr p2, v0

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->uOffset:F

    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->uScale:F

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertices:Lcom/badlogic/gdx/utils/FloatArray;

    iget-object v4, v4, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    iget v5, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->uvOffset:I

    add-int/2addr v5, v0

    aget v4, v4, v5

    mul-float v2, v2, v4

    add-float/2addr v1, v2

    aput v1, p1, p2

    .line 541
    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertices:Lcom/badlogic/gdx/utils/FloatArray;

    iget-object p1, p1, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    iget p2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->uvOffset:I

    add-int/2addr p2, v0

    add-int/2addr p2, v3

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vOffset:F

    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vScale:F

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertices:Lcom/badlogic/gdx/utils/FloatArray;

    iget-object v4, v4, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    iget v5, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->uvOffset:I

    add-int/2addr v0, v5

    add-int/2addr v0, v3

    aget v0, v4, v0

    mul-float v2, v2, v0

    add-float/2addr v1, v2

    aput v1, p1, p2

    :cond_7
    return-void
.end method

.method public static createAttributes(J)Lcom/badlogic/gdx/graphics/VertexAttributes;
    .locals 10

    .line 123
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    const-wide/16 v1, 0x1

    and-long v3, p0, v1

    const/4 v5, 0x3

    cmp-long v6, v3, v1

    if-nez v6, :cond_0

    .line 125
    new-instance v1, Lcom/badlogic/gdx/graphics/VertexAttribute;

    const/4 v2, 0x1

    const-string v3, "a_position"

    invoke-direct {v1, v2, v5, v3}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_0
    const-wide/16 v1, 0x2

    and-long v3, p0, v1

    const-string v6, "a_color"

    const/4 v7, 0x2

    const/4 v8, 0x4

    cmp-long v9, v3, v1

    if-nez v9, :cond_1

    .line 127
    new-instance v1, Lcom/badlogic/gdx/graphics/VertexAttribute;

    invoke-direct {v1, v7, v8, v6}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_1
    const-wide/16 v1, 0x4

    and-long v3, p0, v1

    cmp-long v9, v3, v1

    if-nez v9, :cond_2

    .line 129
    new-instance v1, Lcom/badlogic/gdx/graphics/VertexAttribute;

    invoke-direct {v1, v8, v8, v6}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_2
    const-wide/16 v1, 0x8

    and-long v3, p0, v1

    cmp-long v6, v3, v1

    if-nez v6, :cond_3

    .line 131
    new-instance v1, Lcom/badlogic/gdx/graphics/VertexAttribute;

    const/16 v2, 0x8

    const-string v3, "a_normal"

    invoke-direct {v1, v2, v5, v3}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_3
    const-wide/16 v1, 0x10

    and-long/2addr p0, v1

    cmp-long v3, p0, v1

    if-nez v3, :cond_4

    .line 133
    new-instance p0, Lcom/badlogic/gdx/graphics/VertexAttribute;

    const/16 p1, 0x10

    const-string v1, "a_texCoord0"

    invoke-direct {p0, p1, v7, v1}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 134
    :cond_4
    iget p0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    new-array p1, p0, [Lcom/badlogic/gdx/graphics/VertexAttribute;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_5

    .line 136
    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/VertexAttribute;

    aput-object v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 137
    :cond_5
    new-instance p0, Lcom/badlogic/gdx/graphics/VertexAttributes;

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/VertexAttributes;-><init>([Lcom/badlogic/gdx/graphics/VertexAttribute;)V

    return-object p0
.end method

.method private endpart()V
    .locals 3

    .line 197
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->part:Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    if-eqz v0, :cond_0

    .line 198
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->bounds:Lcom/badlogic/gdx/math/collision/BoundingBox;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->center:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/math/collision/BoundingBox;->getCenter(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 199
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->bounds:Lcom/badlogic/gdx/math/collision/BoundingBox;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->part:Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->halfExtents:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/collision/BoundingBox;->getDimensions(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    .line 200
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->part:Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->halfExtents:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v1}, Lcom/badlogic/gdx/math/Vector3;->len()F

    move-result v1

    iput v1, v0, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->radius:F

    .line 201
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->bounds:Lcom/badlogic/gdx/math/collision/BoundingBox;

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/collision/BoundingBox;->inf()Lcom/badlogic/gdx/math/collision/BoundingBox;

    .line 202
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->part:Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->istart:I

    iput v1, v0, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->offset:I

    .line 203
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->part:Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->indices:Lcom/badlogic/gdx/utils/ShortArray;

    iget v1, v1, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->istart:I

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->size:I

    .line 204
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->indices:Lcom/badlogic/gdx/utils/ShortArray;

    iget v0, v0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->istart:I

    const/4 v0, 0x0

    .line 205
    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->part:Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    :cond_0
    return-void
.end method

.method private static final transformNormal([FIILcom/badlogic/gdx/math/Matrix3;)V
    .locals 5

    const/4 v0, 0x2

    if-le p2, v0, :cond_0

    .line 498
    sget-object p2, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vTmp:Lcom/badlogic/gdx/math/Vector3;

    aget v0, p0, p1

    add-int/lit8 v1, p1, 0x1

    aget v2, p0, v1

    add-int/lit8 v3, p1, 0x2

    aget v4, p0, v3

    invoke-virtual {p2, v0, v2, v4}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/badlogic/gdx/math/Vector3;->mul(Lcom/badlogic/gdx/math/Matrix3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p3

    invoke-virtual {p3}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    .line 499
    iget p3, p2, Lcom/badlogic/gdx/math/Vector3;->x:F

    aput p3, p0, p1

    .line 500
    iget p1, p2, Lcom/badlogic/gdx/math/Vector3;->y:F

    aput p1, p0, v1

    .line 501
    iget p1, p2, Lcom/badlogic/gdx/math/Vector3;->z:F

    aput p1, p0, v3

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-le p2, v1, :cond_1

    .line 503
    sget-object p2, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vTmp:Lcom/badlogic/gdx/math/Vector3;

    aget v1, p0, p1

    add-int/lit8 v2, p1, 0x1

    aget v3, p0, v2

    invoke-virtual {p2, v1, v3, v0}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/badlogic/gdx/math/Vector3;->mul(Lcom/badlogic/gdx/math/Matrix3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p3

    invoke-virtual {p3}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    .line 504
    iget p3, p2, Lcom/badlogic/gdx/math/Vector3;->x:F

    aput p3, p0, p1

    .line 505
    iget p1, p2, Lcom/badlogic/gdx/math/Vector3;->y:F

    aput p1, p0, v2

    goto :goto_0

    .line 507
    :cond_1
    sget-object p2, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vTmp:Lcom/badlogic/gdx/math/Vector3;

    aget v1, p0, p1

    invoke-virtual {p2, v1, v0, v0}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/badlogic/gdx/math/Vector3;->mul(Lcom/badlogic/gdx/math/Matrix3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p2

    invoke-virtual {p2}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    move-result-object p2

    iget p2, p2, Lcom/badlogic/gdx/math/Vector3;->x:F

    aput p2, p0, p1

    :goto_0
    return-void
.end method

.method private static final transformPosition([FIILcom/badlogic/gdx/math/Matrix4;)V
    .locals 5

    const/4 v0, 0x2

    if-le p2, v0, :cond_0

    .line 484
    sget-object p2, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vTmp:Lcom/badlogic/gdx/math/Vector3;

    aget v0, p0, p1

    add-int/lit8 v1, p1, 0x1

    aget v2, p0, v1

    add-int/lit8 v3, p1, 0x2

    aget v4, p0, v3

    invoke-virtual {p2, v0, v2, v4}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/badlogic/gdx/math/Vector3;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Vector3;

    .line 485
    iget p3, p2, Lcom/badlogic/gdx/math/Vector3;->x:F

    aput p3, p0, p1

    .line 486
    iget p1, p2, Lcom/badlogic/gdx/math/Vector3;->y:F

    aput p1, p0, v1

    .line 487
    iget p1, p2, Lcom/badlogic/gdx/math/Vector3;->z:F

    aput p1, p0, v3

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-le p2, v1, :cond_1

    .line 489
    sget-object p2, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vTmp:Lcom/badlogic/gdx/math/Vector3;

    aget v1, p0, p1

    add-int/lit8 v2, p1, 0x1

    aget v3, p0, v2

    invoke-virtual {p2, v1, v3, v0}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/badlogic/gdx/math/Vector3;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Vector3;

    .line 490
    iget p3, p2, Lcom/badlogic/gdx/math/Vector3;->x:F

    aput p3, p0, p1

    .line 491
    iget p1, p2, Lcom/badlogic/gdx/math/Vector3;->y:F

    aput p1, p0, v2

    goto :goto_0

    .line 493
    :cond_1
    sget-object p2, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vTmp:Lcom/badlogic/gdx/math/Vector3;

    aget v1, p0, p1

    invoke-virtual {p2, v1, v0, v0}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/badlogic/gdx/math/Vector3;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p2

    iget p2, p2, Lcom/badlogic/gdx/math/Vector3;->x:F

    aput p2, p0, p1

    :goto_0
    return-void
.end method


# virtual methods
.method public addMesh(Lcom/badlogic/gdx/graphics/Mesh;)V
    .locals 2

    .line 738
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Mesh;->getNumIndices()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->addMesh(Lcom/badlogic/gdx/graphics/Mesh;II)V

    return-void
.end method

.method public addMesh(Lcom/badlogic/gdx/graphics/Mesh;II)V
    .locals 4

    .line 749
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Mesh;->getVertexAttributes()Lcom/badlogic/gdx/graphics/VertexAttributes;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/VertexAttributes;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-gtz p3, :cond_0

    return-void

    .line 753
    :cond_0
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Mesh;->getNumVertices()I

    move-result v0

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->stride:I

    mul-int v0, v0, v1

    .line 754
    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->tmpVertices:Lcom/badlogic/gdx/utils/FloatArray;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/FloatArray;->clear()V

    .line 755
    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/FloatArray;->ensureCapacity(I)[F

    .line 756
    iput v0, v1, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    .line 757
    iget-object v0, v1, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/Mesh;->getVertices([F)[F

    .line 759
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->tmpIndices:Lcom/badlogic/gdx/utils/ShortArray;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ShortArray;->clear()V

    .line 760
    invoke-virtual {v0, p3}, Lcom/badlogic/gdx/utils/ShortArray;->ensureCapacity(I)[S

    .line 761
    iput p3, v0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    .line 762
    iget-object v2, v0, Lcom/badlogic/gdx/utils/ShortArray;->items:[S

    const/4 v3, 0x0

    invoke-virtual {p1, p2, p3, v2, v3}, Lcom/badlogic/gdx/graphics/Mesh;->getIndices(II[SI)V

    .line 764
    iget-object p1, v1, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    iget-object p2, v0, Lcom/badlogic/gdx/utils/ShortArray;->items:[S

    invoke-virtual {p0, p1, p2, v3, p3}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->addMesh([F[SII)V

    return-void

    .line 749
    :cond_1
    new-instance p1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string p2, "Vertex attributes do not match"

    invoke-direct {p1, p2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addMesh(Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;)V
    .locals 2

    .line 743
    iget v0, p1, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->primitiveType:I

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->primitiveType:I

    if-ne v0, v1, :cond_0

    .line 744
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    iget v1, p1, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->offset:I

    iget p1, p1, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->size:I

    invoke-virtual {p0, v0, v1, p1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->addMesh(Lcom/badlogic/gdx/graphics/Mesh;II)V

    return-void

    .line 743
    :cond_0
    new-instance p1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v0, "Primitive type doesn\'t match"

    invoke-direct {p1, v0}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addMesh([F[S)V
    .locals 4

    .line 793
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->lastIndex:I

    add-int/lit8 v0, v0, 0x1

    .line 795
    array-length v1, p1

    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->stride:I

    div-int/2addr v1, v2

    .line 796
    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->ensureVertices(I)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 797
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_0

    .line 798
    invoke-direct {p0, p1, v2}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->addVertex([FI)V

    .line 797
    iget v3, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->stride:I

    add-int/2addr v2, v3

    goto :goto_0

    .line 800
    :cond_0
    array-length p1, p2

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->ensureIndices(I)V

    .line 801
    :goto_1
    array-length p1, p2

    if-ge v1, p1, :cond_1

    .line 802
    aget-short p1, p2, v1

    add-int/2addr p1, v0

    int-to-short p1, p1

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->index(S)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public addMesh([F[SII)V
    .locals 4

    .line 771
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->indicesMap:Lcom/badlogic/gdx/utils/IntIntMap;

    if-nez v0, :cond_0

    .line 772
    new-instance v0, Lcom/badlogic/gdx/utils/IntIntMap;

    invoke-direct {v0, p4}, Lcom/badlogic/gdx/utils/IntIntMap;-><init>(I)V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->indicesMap:Lcom/badlogic/gdx/utils/IntIntMap;

    goto :goto_0

    .line 774
    :cond_0
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/IntIntMap;->clear()V

    .line 775
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->indicesMap:Lcom/badlogic/gdx/utils/IntIntMap;

    invoke-virtual {v0, p4}, Lcom/badlogic/gdx/utils/IntIntMap;->ensureCapacity(I)V

    .line 777
    :goto_0
    invoke-virtual {p0, p4}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->ensureIndices(I)V

    .line 778
    array-length v0, p1

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->stride:I

    div-int/2addr v0, v1

    if-ge v0, p4, :cond_1

    goto :goto_1

    :cond_1
    move v0, p4

    .line 779
    :goto_1
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->ensureVertices(I)V

    const/4 v0, 0x0

    :goto_2
    if-ge v0, p4, :cond_3

    add-int v1, p3, v0

    .line 781
    aget-short v1, p2, v1

    const v2, 0xffff

    and-int/2addr v1, v2

    .line 782
    sget-object v2, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->indicesMap:Lcom/badlogic/gdx/utils/IntIntMap;

    const/4 v3, -0x1

    invoke-virtual {v2, v1, v3}, Lcom/badlogic/gdx/utils/IntIntMap;->get(II)I

    move-result v2

    if-gez v2, :cond_2

    .line 784
    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->stride:I

    mul-int v2, v2, v1

    invoke-direct {p0, p1, v2}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->addVertex([FI)V

    .line 785
    sget-object v2, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->indicesMap:Lcom/badlogic/gdx/utils/IntIntMap;

    iget v3, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->lastIndex:I

    invoke-virtual {v2, v1, v3}, Lcom/badlogic/gdx/utils/IntIntMap;->put(II)V

    move v2, v3

    :cond_2
    int-to-short v1, v2

    .line 787
    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->index(S)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public arrow(FFFFFFFFI)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1079
    invoke-static/range {p0 .. p9}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/ArrowShapeBuilder;->build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;FFFFFFFFI)V

    return-void
.end method

.method public begin(J)V
    .locals 0

    .line 144
    invoke-static {p1, p2}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->createAttributes(J)Lcom/badlogic/gdx/graphics/VertexAttributes;

    move-result-object p1

    const/4 p2, -0x1

    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->begin(Lcom/badlogic/gdx/graphics/VertexAttributes;I)V

    return-void
.end method

.method public begin(JI)V
    .locals 0

    .line 156
    invoke-static {p1, p2}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->createAttributes(J)Lcom/badlogic/gdx/graphics/VertexAttributes;

    move-result-object p1

    invoke-virtual {p0, p1, p3}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->begin(Lcom/badlogic/gdx/graphics/VertexAttributes;I)V

    return-void
.end method

.method public begin(Lcom/badlogic/gdx/graphics/VertexAttributes;)V
    .locals 1

    const/4 v0, -0x1

    .line 149
    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->begin(Lcom/badlogic/gdx/graphics/VertexAttributes;I)V

    return-void
.end method

.method public begin(Lcom/badlogic/gdx/graphics/VertexAttributes;I)V
    .locals 6

    .line 161
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    if-nez v0, :cond_a

    .line 162
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    .line 163
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertices:Lcom/badlogic/gdx/utils/FloatArray;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/FloatArray;->clear()V

    .line 164
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->indices:Lcom/badlogic/gdx/utils/ShortArray;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ShortArray;->clear()V

    .line 165
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->parts:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    const/4 v0, 0x0

    .line 166
    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vindex:I

    const/4 v1, -0x1

    .line 167
    iput v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->lastIndex:I

    .line 168
    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->istart:I

    const/4 v2, 0x0

    .line 169
    iput-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->part:Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    .line 170
    iget v3, p1, Lcom/badlogic/gdx/graphics/VertexAttributes;->vertexSize:I

    const/4 v4, 0x4

    div-int/2addr v3, v4

    iput v3, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->stride:I

    .line 171
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertex:[F

    if-eqz v5, :cond_0

    array-length v5, v5

    if-ge v5, v3, :cond_1

    :cond_0
    new-array v3, v3, [F

    iput-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertex:[F

    :cond_1
    const/4 v3, 0x1

    .line 172
    invoke-virtual {p1, v3}, Lcom/badlogic/gdx/graphics/VertexAttributes;->findByUsage(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v3

    if-eqz v3, :cond_9

    .line 174
    iget v5, v3, Lcom/badlogic/gdx/graphics/VertexAttribute;->offset:I

    div-int/2addr v5, v4

    iput v5, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->posOffset:I

    .line 175
    iget v3, v3, Lcom/badlogic/gdx/graphics/VertexAttribute;->numComponents:I

    iput v3, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->posSize:I

    const/16 v3, 0x8

    .line 176
    invoke-virtual {p1, v3}, Lcom/badlogic/gdx/graphics/VertexAttributes;->findByUsage(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v3

    if-nez v3, :cond_2

    const/4 v3, -0x1

    goto :goto_0

    .line 177
    :cond_2
    iget v3, v3, Lcom/badlogic/gdx/graphics/VertexAttribute;->offset:I

    div-int/2addr v3, v4

    :goto_0
    iput v3, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->norOffset:I

    const/16 v3, 0x100

    .line 178
    invoke-virtual {p1, v3}, Lcom/badlogic/gdx/graphics/VertexAttributes;->findByUsage(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v3

    if-nez v3, :cond_3

    const/4 v3, -0x1

    goto :goto_1

    .line 179
    :cond_3
    iget v3, v3, Lcom/badlogic/gdx/graphics/VertexAttribute;->offset:I

    div-int/2addr v3, v4

    :goto_1
    iput v3, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->biNorOffset:I

    const/16 v3, 0x80

    .line 180
    invoke-virtual {p1, v3}, Lcom/badlogic/gdx/graphics/VertexAttributes;->findByUsage(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v3

    if-nez v3, :cond_4

    const/4 v3, -0x1

    goto :goto_2

    .line 181
    :cond_4
    iget v3, v3, Lcom/badlogic/gdx/graphics/VertexAttribute;->offset:I

    div-int/2addr v3, v4

    :goto_2
    iput v3, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->tangentOffset:I

    const/4 v3, 0x2

    .line 182
    invoke-virtual {p1, v3}, Lcom/badlogic/gdx/graphics/VertexAttributes;->findByUsage(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v3

    if-nez v3, :cond_5

    const/4 v5, -0x1

    goto :goto_3

    .line 183
    :cond_5
    iget v5, v3, Lcom/badlogic/gdx/graphics/VertexAttribute;->offset:I

    div-int/2addr v5, v4

    :goto_3
    iput v5, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->colOffset:I

    if-nez v3, :cond_6

    goto :goto_4

    .line 184
    :cond_6
    iget v0, v3, Lcom/badlogic/gdx/graphics/VertexAttribute;->numComponents:I

    :goto_4
    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->colSize:I

    .line 185
    invoke-virtual {p1, v4}, Lcom/badlogic/gdx/graphics/VertexAttributes;->findByUsage(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v0

    if-nez v0, :cond_7

    const/4 v0, -0x1

    goto :goto_5

    .line 186
    :cond_7
    iget v0, v0, Lcom/badlogic/gdx/graphics/VertexAttribute;->offset:I

    div-int/2addr v0, v4

    :goto_5
    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->cpOffset:I

    const/16 v0, 0x10

    .line 187
    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/VertexAttributes;->findByUsage(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object p1

    if-nez p1, :cond_8

    goto :goto_6

    .line 188
    :cond_8
    iget p1, p1, Lcom/badlogic/gdx/graphics/VertexAttribute;->offset:I

    div-int/lit8 v1, p1, 0x4

    :goto_6
    iput v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->uvOffset:I

    .line 189
    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 190
    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->setVertexTransform(Lcom/badlogic/gdx/math/Matrix4;)V

    .line 191
    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->setUVRange(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 192
    iput p2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->primitiveType:I

    .line 193
    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->bounds:Lcom/badlogic/gdx/math/collision/BoundingBox;

    invoke-virtual {p1}, Lcom/badlogic/gdx/math/collision/BoundingBox;->inf()Lcom/badlogic/gdx/math/collision/BoundingBox;

    return-void

    .line 173
    :cond_9
    new-instance p1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string p2, "Cannot build mesh without position attribute"

    invoke-direct {p1, p2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 161
    :cond_a
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Call end() first"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public box(FFF)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 852
    invoke-static {p0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/BoxShapeBuilder;->build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;FFF)V

    return-void
.end method

.method public box(FFFFFF)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 858
    invoke-static/range {p0 .. p6}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/BoxShapeBuilder;->build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;FFFFFF)V

    return-void
.end method

.method public box(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 833
    invoke-static/range {p0 .. p8}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/BoxShapeBuilder;->build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;)V

    return-void
.end method

.method public box(Lcom/badlogic/gdx/math/Matrix4;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 846
    invoke-static {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/BoxShapeBuilder;->build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;Lcom/badlogic/gdx/math/Matrix4;)V

    return-void
.end method

.method public box(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 840
    invoke-static/range {p0 .. p8}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/BoxShapeBuilder;->build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)V

    return-void
.end method

.method public capsule(FFI)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1072
    invoke-static {p0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/CapsuleShapeBuilder;->build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;FFI)V

    return-void
.end method

.method public circle(FIFFFFFF)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 865
    invoke-static/range {p0 .. p8}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/EllipseShapeBuilder;->build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;FIFFFFFF)V

    return-void
.end method

.method public circle(FIFFFFFFFF)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 894
    invoke-static/range {p0 .. p10}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/EllipseShapeBuilder;->build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;FIFFFFFFFF)V

    return-void
.end method

.method public circle(FIFFFFFFFFFFFF)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 885
    invoke-static/range {p0 .. p14}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/EllipseShapeBuilder;->build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;FIFFFFFFFFFFFF)V

    return-void
.end method

.method public circle(FIFFFFFFFFFFFFFF)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 916
    invoke-static/range {p0 .. p16}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/EllipseShapeBuilder;->build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;FIFFFFFFFFFFFFFF)V

    return-void
.end method

.method public circle(FILcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 871
    invoke-static {p0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/EllipseShapeBuilder;->build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;FILcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)V

    return-void
.end method

.method public circle(FILcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;FF)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 900
    invoke-static/range {p0 .. p6}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/EllipseShapeBuilder;->build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;FILcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;FF)V

    return-void
.end method

.method public circle(FILcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 878
    invoke-static/range {p0 .. p6}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/EllipseShapeBuilder;->build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;FILcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)V

    return-void
.end method

.method public circle(FILcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;FF)V
    .locals 21
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    move-object/from16 v4, p0

    move/from16 v5, p1

    move/from16 v6, p2

    move/from16 v19, p7

    move/from16 v20, p8

    .line 907
    iget v7, v0, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v8, v0, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v9, v0, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget v10, v1, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v11, v1, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v12, v1, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget v13, v2, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v14, v2, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v15, v2, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget v0, v3, Lcom/badlogic/gdx/math/Vector3;->x:F

    move/from16 v16, v0

    iget v0, v3, Lcom/badlogic/gdx/math/Vector3;->y:F

    move/from16 v17, v0

    iget v0, v3, Lcom/badlogic/gdx/math/Vector3;->z:F

    move/from16 v18, v0

    invoke-virtual/range {v4 .. v20}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->circle(FIFFFFFFFFFFFFFF)V

    return-void
.end method

.method public clear()V
    .locals 2

    .line 274
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertices:Lcom/badlogic/gdx/utils/FloatArray;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/FloatArray;->clear()V

    .line 275
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->indices:Lcom/badlogic/gdx/utils/ShortArray;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ShortArray;->clear()V

    .line 276
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->parts:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    const/4 v0, 0x0

    .line 277
    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vindex:I

    const/4 v1, -0x1

    .line 278
    iput v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->lastIndex:I

    .line 279
    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->istart:I

    const/4 v0, 0x0

    .line 280
    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->part:Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    return-void
.end method

.method public cone(FFFI)V
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v5, 0x0

    const/high16 v6, 0x43b40000    # 360.0f

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 1033
    invoke-virtual/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->cone(FFFIFF)V

    return-void
.end method

.method public cone(FFFIFF)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1039
    invoke-static/range {p0 .. p6}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/ConeShapeBuilder;->build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;FFFIFF)V

    return-void
.end method

.method public cylinder(FFFI)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1015
    invoke-static {p0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/CylinderShapeBuilder;->build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;FFFI)V

    return-void
.end method

.method public cylinder(FFFIFF)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1021
    invoke-static/range {p0 .. p6}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/CylinderShapeBuilder;->build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;FFFIFF)V

    return-void
.end method

.method public cylinder(FFFIFFZ)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1027
    invoke-static/range {p0 .. p7}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/CylinderShapeBuilder;->build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;FFFIFFZ)V

    return-void
.end method

.method public ellipse(FFFFIFFFFFF)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 991
    invoke-static/range {p0 .. p11}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/EllipseShapeBuilder;->build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;FFFFIFFFFFF)V

    return-void
.end method

.method public ellipse(FFFFIFFFFFFFF)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 999
    invoke-static/range {p0 .. p13}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/EllipseShapeBuilder;->build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;FFFFIFFFFFFFF)V

    return-void
.end method

.method public ellipse(FFFFIFFFFFFFFFFFFFF)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1008
    invoke-static/range {p0 .. p19}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/EllipseShapeBuilder;->build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;FFFFIFFFFFFFFFFFFFF)V

    return-void
.end method

.method public ellipse(FFFFILcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 984
    invoke-static/range {p0 .. p7}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/EllipseShapeBuilder;->build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;FFFFILcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)V

    return-void
.end method

.method public ellipse(FFIFFFFFF)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 924
    invoke-static/range {p0 .. p9}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/EllipseShapeBuilder;->build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;FFIFFFFFF)V

    return-void
.end method

.method public ellipse(FFIFFFFFFFF)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 953
    invoke-static/range {p0 .. p11}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/EllipseShapeBuilder;->build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;FFIFFFFFFFF)V

    return-void
.end method

.method public ellipse(FFIFFFFFFFFFFFF)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 945
    invoke-static/range {p0 .. p15}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/EllipseShapeBuilder;->build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;FFIFFFFFFFFFFFF)V

    return-void
.end method

.method public ellipse(FFIFFFFFFFFFFFFFF)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 976
    invoke-static/range {p0 .. p17}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/EllipseShapeBuilder;->build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;FFIFFFFFFFFFFFFFF)V

    return-void
.end method

.method public ellipse(FFILcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 930
    invoke-static/range {p0 .. p5}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/EllipseShapeBuilder;->build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;FFILcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)V

    return-void
.end method

.method public ellipse(FFILcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;FF)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 961
    invoke-static/range {p0 .. p7}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/EllipseShapeBuilder;->build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;FFILcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;FF)V

    return-void
.end method

.method public ellipse(FFILcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 937
    invoke-static/range {p0 .. p7}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/EllipseShapeBuilder;->build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;FFILcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)V

    return-void
.end method

.method public ellipse(FFILcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;FF)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 968
    invoke-static/range {p0 .. p9}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/EllipseShapeBuilder;->build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;FFILcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;FF)V

    return-void
.end method

.method public end()Lcom/badlogic/gdx/graphics/Mesh;
    .locals 5

    .line 267
    new-instance v0, Lcom/badlogic/gdx/graphics/Mesh;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertices:Lcom/badlogic/gdx/utils/FloatArray;

    iget v1, v1, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->stride:I

    div-int/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->indices:Lcom/badlogic/gdx/utils/ShortArray;

    iget v2, v2, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    const/4 v4, 0x1

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/badlogic/gdx/graphics/Mesh;-><init>(ZIILcom/badlogic/gdx/graphics/VertexAttributes;)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->end(Lcom/badlogic/gdx/graphics/Mesh;)Lcom/badlogic/gdx/graphics/Mesh;

    move-result-object v0

    return-object v0
.end method

.method public end(Lcom/badlogic/gdx/graphics/Mesh;)Lcom/badlogic/gdx/graphics/Mesh;
    .locals 4

    .line 241
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->endpart()V

    .line 243
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    if-eqz v0, :cond_4

    .line 244
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Mesh;->getVertexAttributes()Lcom/badlogic/gdx/graphics/VertexAttributes;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/VertexAttributes;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 245
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Mesh;->getMaxVertices()I

    move-result v0

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->stride:I

    mul-int v0, v0, v1

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertices:Lcom/badlogic/gdx/utils/FloatArray;

    iget v1, v1, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    const-string v2, " < "

    if-lt v0, v1, :cond_2

    .line 248
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Mesh;->getMaxIndices()I

    move-result v0

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->indices:Lcom/badlogic/gdx/utils/ShortArray;

    iget v1, v1, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    if-lt v0, v1, :cond_1

    .line 251
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertices:Lcom/badlogic/gdx/utils/FloatArray;

    iget-object v0, v0, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertices:Lcom/badlogic/gdx/utils/FloatArray;

    iget v1, v1, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Lcom/badlogic/gdx/graphics/Mesh;->setVertices([FII)Lcom/badlogic/gdx/graphics/Mesh;

    .line 252
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->indices:Lcom/badlogic/gdx/utils/ShortArray;

    iget-object v0, v0, Lcom/badlogic/gdx/utils/ShortArray;->items:[S

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->indices:Lcom/badlogic/gdx/utils/ShortArray;

    iget v1, v1, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    invoke-virtual {p1, v0, v2, v1}, Lcom/badlogic/gdx/graphics/Mesh;->setIndices([SII)Lcom/badlogic/gdx/graphics/Mesh;

    .line 254
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->parts:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    .line 255
    iput-object p1, v1, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    goto :goto_0

    .line 256
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->parts:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    const/4 v0, 0x0

    .line 258
    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    .line 259
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertices:Lcom/badlogic/gdx/utils/FloatArray;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/FloatArray;->clear()V

    .line 260
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->indices:Lcom/badlogic/gdx/utils/ShortArray;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ShortArray;->clear()V

    return-object p1

    .line 249
    :cond_1
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Mesh can\'t hold enough indices: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Mesh;->getMaxIndices()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->indices:Lcom/badlogic/gdx/utils/ShortArray;

    iget p1, p1, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 246
    :cond_2
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Mesh can\'t hold enough vertices: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Mesh;->getMaxVertices()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " * "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->stride:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertices:Lcom/badlogic/gdx/utils/FloatArray;

    iget p1, p1, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 244
    :cond_3
    new-instance p1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v0, "Mesh attributes don\'t match"

    invoke-direct {p1, v0}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 243
    :cond_4
    new-instance p1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v0, "Call begin() first"

    invoke-direct {p1, v0}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public ensureCapacity(II)V
    .locals 0

    .line 420
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->ensureVertices(I)V

    .line 421
    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->ensureIndices(I)V

    return-void
.end method

.method public ensureIndices(I)V
    .locals 1

    .line 415
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->indices:Lcom/badlogic/gdx/utils/ShortArray;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ShortArray;->ensureCapacity(I)[S

    return-void
.end method

.method public ensureRectangleIndices(I)V
    .locals 2

    .line 450
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->primitiveType:I

    if-nez v0, :cond_0

    mul-int/lit8 p1, p1, 0x4

    .line 451
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->ensureIndices(I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    mul-int/lit8 p1, p1, 0x8

    .line 453
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->ensureIndices(I)V

    goto :goto_0

    :cond_1
    mul-int/lit8 p1, p1, 0x6

    .line 456
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->ensureIndices(I)V

    :goto_0
    return-void
.end method

.method public ensureRectangles(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    mul-int/lit8 v0, p1, 0x4

    .line 469
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->ensureVertices(I)V

    .line 470
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->ensureRectangleIndices(I)V

    return-void
.end method

.method public ensureRectangles(II)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 462
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->ensureVertices(I)V

    .line 463
    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->ensureRectangleIndices(I)V

    return-void
.end method

.method public ensureTriangleIndices(I)V
    .locals 2

    .line 426
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->primitiveType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    mul-int/lit8 p1, p1, 0x6

    .line 427
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->ensureIndices(I)V

    goto :goto_1

    :cond_0
    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    if-nez v0, :cond_1

    goto :goto_0

    .line 431
    :cond_1
    new-instance p1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v0, "Incorrect primtive type"

    invoke-direct {p1, v0}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    mul-int/lit8 p1, p1, 0x3

    .line 429
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->ensureIndices(I)V

    :goto_1
    return-void
.end method

.method public ensureTriangles(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    mul-int/lit8 v0, p1, 0x3

    .line 444
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->ensureVertices(I)V

    .line 445
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->ensureTriangleIndices(I)V

    return-void
.end method

.method public ensureTriangles(II)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 437
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->ensureVertices(I)V

    .line 438
    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->ensureTriangleIndices(I)V

    return-void
.end method

.method public ensureVertices(I)V
    .locals 2

    .line 410
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertices:Lcom/badlogic/gdx/utils/FloatArray;

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->stride:I

    mul-int v1, v1, p1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/FloatArray;->ensureCapacity(I)[F

    return-void
.end method

.method public getAttributes()Lcom/badlogic/gdx/graphics/VertexAttributes;
    .locals 1

    .line 336
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    return-object v0
.end method

.method public getFloatsPerVertex()I
    .locals 1

    .line 285
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->stride:I

    return v0
.end method

.method public getIndices([SI)V
    .locals 3

    .line 321
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    if-eqz v0, :cond_1

    if-ltz p2, :cond_0

    .line 322
    array-length v0, p1

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->indices:Lcom/badlogic/gdx/utils/ShortArray;

    iget v1, v1, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    sub-int/2addr v0, v1

    if-gt p2, v0, :cond_0

    .line 324
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->indices:Lcom/badlogic/gdx/utils/ShortArray;

    iget-object v0, v0, Lcom/badlogic/gdx/utils/ShortArray;->items:[S

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->indices:Lcom/badlogic/gdx/utils/ShortArray;

    iget v2, v2, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    invoke-static {v0, v1, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    .line 323
    :cond_0
    new-instance p1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string p2, "Array too small or offset out of range"

    invoke-direct {p1, p2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 321
    :cond_1
    new-instance p1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string p2, "Must be called in between #begin and #end"

    invoke-direct {p1, p2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected getIndices()[S
    .locals 1

    .line 331
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->indices:Lcom/badlogic/gdx/utils/ShortArray;

    iget-object v0, v0, Lcom/badlogic/gdx/utils/ShortArray;->items:[S

    return-object v0
.end method

.method public getMeshPart()Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;
    .locals 1

    .line 341
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->part:Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    return-object v0
.end method

.method public getNumIndices()I
    .locals 1

    .line 313
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->indices:Lcom/badlogic/gdx/utils/ShortArray;

    iget v0, v0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    return v0
.end method

.method public getNumVertices()I
    .locals 2

    .line 290
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertices:Lcom/badlogic/gdx/utils/FloatArray;

    iget v0, v0, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->stride:I

    div-int/2addr v0, v1

    return v0
.end method

.method public getPrimitiveType()I
    .locals 1

    .line 346
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->primitiveType:I

    return v0
.end method

.method public getVertexTransform(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;
    .locals 1

    .line 383
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->positionTransform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object p1

    return-object p1
.end method

.method public getVertices([FI)V
    .locals 3

    .line 298
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    if-eqz v0, :cond_1

    if-ltz p2, :cond_0

    .line 299
    array-length v0, p1

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertices:Lcom/badlogic/gdx/utils/FloatArray;

    iget v1, v1, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    sub-int/2addr v0, v1

    if-gt p2, v0, :cond_0

    .line 301
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertices:Lcom/badlogic/gdx/utils/FloatArray;

    iget-object v0, v0, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertices:Lcom/badlogic/gdx/utils/FloatArray;

    iget v2, v2, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    invoke-static {v0, v1, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    .line 300
    :cond_0
    new-instance p1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string p2, "Array too small or offset out of range"

    invoke-direct {p1, p2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 298
    :cond_1
    new-instance p1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string p2, "Must be called in between #begin and #end"

    invoke-direct {p1, p2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected getVertices()[F
    .locals 1

    .line 308
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertices:Lcom/badlogic/gdx/utils/FloatArray;

    iget-object v0, v0, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    return-object v0
.end method

.method public index(S)V
    .locals 1

    .line 598
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->indices:Lcom/badlogic/gdx/utils/ShortArray;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ShortArray;->add(S)V

    return-void
.end method

.method public index(SS)V
    .locals 1

    const/4 v0, 0x2

    .line 603
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->ensureIndices(I)V

    .line 604
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->indices:Lcom/badlogic/gdx/utils/ShortArray;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ShortArray;->add(S)V

    .line 605
    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->indices:Lcom/badlogic/gdx/utils/ShortArray;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/utils/ShortArray;->add(S)V

    return-void
.end method

.method public index(SSS)V
    .locals 1

    const/4 v0, 0x3

    .line 610
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->ensureIndices(I)V

    .line 611
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->indices:Lcom/badlogic/gdx/utils/ShortArray;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ShortArray;->add(S)V

    .line 612
    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->indices:Lcom/badlogic/gdx/utils/ShortArray;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/utils/ShortArray;->add(S)V

    .line 613
    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->indices:Lcom/badlogic/gdx/utils/ShortArray;

    invoke-virtual {p1, p3}, Lcom/badlogic/gdx/utils/ShortArray;->add(S)V

    return-void
.end method

.method public index(SSSS)V
    .locals 1

    const/4 v0, 0x4

    .line 618
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->ensureIndices(I)V

    .line 619
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->indices:Lcom/badlogic/gdx/utils/ShortArray;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ShortArray;->add(S)V

    .line 620
    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->indices:Lcom/badlogic/gdx/utils/ShortArray;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/utils/ShortArray;->add(S)V

    .line 621
    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->indices:Lcom/badlogic/gdx/utils/ShortArray;

    invoke-virtual {p1, p3}, Lcom/badlogic/gdx/utils/ShortArray;->add(S)V

    .line 622
    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->indices:Lcom/badlogic/gdx/utils/ShortArray;

    invoke-virtual {p1, p4}, Lcom/badlogic/gdx/utils/ShortArray;->add(S)V

    return-void
.end method

.method public index(SSSSSS)V
    .locals 1

    const/4 v0, 0x6

    .line 627
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->ensureIndices(I)V

    .line 628
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->indices:Lcom/badlogic/gdx/utils/ShortArray;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ShortArray;->add(S)V

    .line 629
    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->indices:Lcom/badlogic/gdx/utils/ShortArray;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/utils/ShortArray;->add(S)V

    .line 630
    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->indices:Lcom/badlogic/gdx/utils/ShortArray;

    invoke-virtual {p1, p3}, Lcom/badlogic/gdx/utils/ShortArray;->add(S)V

    .line 631
    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->indices:Lcom/badlogic/gdx/utils/ShortArray;

    invoke-virtual {p1, p4}, Lcom/badlogic/gdx/utils/ShortArray;->add(S)V

    .line 632
    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->indices:Lcom/badlogic/gdx/utils/ShortArray;

    invoke-virtual {p1, p5}, Lcom/badlogic/gdx/utils/ShortArray;->add(S)V

    .line 633
    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->indices:Lcom/badlogic/gdx/utils/ShortArray;

    invoke-virtual {p1, p6}, Lcom/badlogic/gdx/utils/ShortArray;->add(S)V

    return-void
.end method

.method public index(SSSSSSSS)V
    .locals 1

    const/16 v0, 0x8

    .line 639
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->ensureIndices(I)V

    .line 640
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->indices:Lcom/badlogic/gdx/utils/ShortArray;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ShortArray;->add(S)V

    .line 641
    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->indices:Lcom/badlogic/gdx/utils/ShortArray;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/utils/ShortArray;->add(S)V

    .line 642
    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->indices:Lcom/badlogic/gdx/utils/ShortArray;

    invoke-virtual {p1, p3}, Lcom/badlogic/gdx/utils/ShortArray;->add(S)V

    .line 643
    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->indices:Lcom/badlogic/gdx/utils/ShortArray;

    invoke-virtual {p1, p4}, Lcom/badlogic/gdx/utils/ShortArray;->add(S)V

    .line 644
    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->indices:Lcom/badlogic/gdx/utils/ShortArray;

    invoke-virtual {p1, p5}, Lcom/badlogic/gdx/utils/ShortArray;->add(S)V

    .line 645
    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->indices:Lcom/badlogic/gdx/utils/ShortArray;

    invoke-virtual {p1, p6}, Lcom/badlogic/gdx/utils/ShortArray;->add(S)V

    .line 646
    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->indices:Lcom/badlogic/gdx/utils/ShortArray;

    invoke-virtual {p1, p7}, Lcom/badlogic/gdx/utils/ShortArray;->add(S)V

    .line 647
    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->indices:Lcom/badlogic/gdx/utils/ShortArray;

    invoke-virtual {p1, p8}, Lcom/badlogic/gdx/utils/ShortArray;->add(S)V

    return-void
.end method

.method public isVertexTransformationEnabled()Z
    .locals 1

    .line 400
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertexTransformationEnabled:Z

    return v0
.end method

.method public lastIndex()S
    .locals 1

    .line 477
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->lastIndex:I

    int-to-short v0, v0

    return v0
.end method

.method public line(FFFFFF)V
    .locals 2

    .line 669
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertTmp1:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->setPos(FFF)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object p1

    iget-object p2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertTmp2:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    invoke-virtual {p2, v1, v1, v1, v1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object p2

    invoke-virtual {p2, p4, p5, p6}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->setPos(FFF)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->line(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;)V

    return-void
.end method

.method public line(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;)V
    .locals 1

    const/4 v0, 0x2

    .line 658
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->ensureVertices(I)V

    .line 659
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertex(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;)S

    move-result p1

    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertex(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;)S

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->line(SS)V

    return-void
.end method

.method public line(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;)V
    .locals 2

    .line 674
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertTmp1:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2, v1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object p1

    iget-object p2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertTmp2:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    invoke-virtual {p2, p3, v1, p4, v1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->line(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;)V

    return-void
.end method

.method public line(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)V
    .locals 2

    .line 664
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertTmp1:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, v1, v1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object p1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertTmp2:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    invoke-virtual {v0, p2, v1, v1, v1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->line(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;)V

    return-void
.end method

.method public line(SS)V
    .locals 2

    .line 652
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->primitiveType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 653
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->index(SS)V

    return-void

    .line 652
    :cond_0
    new-instance p1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string p2, "Incorrect primitive type"

    invoke-direct {p1, p2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public part(Ljava/lang/String;I)Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;
    .locals 1

    .line 213
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;-><init>()V

    invoke-virtual {p0, p1, p2, v0}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->part(Ljava/lang/String;ILcom/badlogic/gdx/graphics/g3d/model/MeshPart;)Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    move-result-object p1

    return-object p1
.end method

.method public part(Ljava/lang/String;ILcom/badlogic/gdx/graphics/g3d/model/MeshPart;)Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;
    .locals 1

    .line 222
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    if-eqz v0, :cond_0

    .line 223
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->endpart()V

    .line 225
    iput-object p3, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->part:Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    .line 226
    iput-object p1, p3, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->id:Ljava/lang/String;

    .line 227
    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->part:Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    iput p2, p1, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->primitiveType:I

    iput p2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->primitiveType:I

    .line 228
    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->parts:Lcom/badlogic/gdx/utils/Array;

    iget-object p2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->part:Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 230
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 231
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->setVertexTransform(Lcom/badlogic/gdx/math/Matrix4;)V

    .line 232
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->setUVRange(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 234
    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->part:Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    return-object p1

    .line 222
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Call begin() first"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public patch(FFFFFFFFFFFFFFFII)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 826
    invoke-static/range {p0 .. p17}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/PatchShapeBuilder;->build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;FFFFFFFFFFFFFFFII)V

    return-void
.end method

.method public patch(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;II)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 812
    invoke-static/range {p0 .. p6}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/PatchShapeBuilder;->build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;II)V

    return-void
.end method

.method public patch(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;II)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 819
    invoke-static/range {p0 .. p7}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/PatchShapeBuilder;->build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;II)V

    return-void
.end method

.method public rect(FFFFFFFFFFFFFFF)V
    .locals 13

    move-object v0, p0

    move/from16 v1, p13

    move/from16 v2, p14

    move/from16 v3, p15

    .line 730
    iget-object v4, v0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertTmp1:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v5, v5, v5}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v4

    move v6, p1

    move v7, p2

    move/from16 v8, p3

    invoke-virtual {v4, p1, p2, v8}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->setPos(FFF)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v4

    invoke-virtual {v4, v1, v2, v3}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->setNor(FFF)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v4

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v4, v6, v7}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->setUV(FF)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v4

    iget-object v8, v0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertTmp2:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    .line 731
    invoke-virtual {v8, v5, v5, v5, v5}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v8

    move/from16 v9, p4

    move/from16 v10, p5

    move/from16 v11, p6

    invoke-virtual {v8, v9, v10, v11}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->setPos(FFF)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v8

    invoke-virtual {v8, v1, v2, v3}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->setNor(FFF)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v8

    invoke-virtual {v8, v7, v7}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->setUV(FF)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v8

    iget-object v9, v0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertTmp3:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    .line 732
    invoke-virtual {v9, v5, v5, v5, v5}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v9

    move/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    invoke-virtual {v9, v10, v11, v12}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->setPos(FFF)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v9

    invoke-virtual {v9, v1, v2, v3}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->setNor(FFF)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v9

    invoke-virtual {v9, v7, v6}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->setUV(FF)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v7

    iget-object v9, v0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertTmp4:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    .line 733
    invoke-virtual {v9, v5, v5, v5, v5}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v5

    move/from16 v9, p10

    move/from16 v10, p11

    move/from16 v11, p12

    invoke-virtual {v5, v9, v10, v11}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->setPos(FFF)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v5

    invoke-virtual {v5, v1, v2, v3}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->setNor(FFF)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v1

    invoke-virtual {v1, v6, v6}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->setUV(FF)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v1

    .line 730
    invoke-virtual {p0, v4, v8, v7, v1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->rect(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;)V

    return-void
.end method

.method public rect(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;)V
    .locals 1

    const/4 v0, 0x4

    .line 717
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->ensureVertices(I)V

    .line 718
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertex(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;)S

    move-result p1

    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertex(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;)S

    move-result p2

    invoke-virtual {p0, p3}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertex(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;)S

    move-result p3

    invoke-virtual {p0, p4}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertex(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;)S

    move-result p4

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->rect(SSSS)V

    return-void
.end method

.method public rect(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)V
    .locals 4

    .line 723
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertTmp1:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p5, v1, v1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object p1

    const/4 v0, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0, v2}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->setUV(FF)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object p1

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertTmp2:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    invoke-virtual {v3, p2, p5, v1, v1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object p2

    invoke-virtual {p2, v2, v2}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->setUV(FF)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object p2

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertTmp3:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    .line 724
    invoke-virtual {v3, p3, p5, v1, v1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object p3

    invoke-virtual {p3, v2, v0}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->setUV(FF)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object p3

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertTmp4:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    invoke-virtual {v2, p4, p5, v1, v1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object p4

    invoke-virtual {p4, v0, v0}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->setUV(FF)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object p4

    .line 723
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->rect(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;)V

    return-void
.end method

.method public rect(SSSS)V
    .locals 9

    .line 705
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->primitiveType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p3

    move v5, p4

    move v6, p1

    .line 706
    invoke-virtual/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->index(SSSSSS)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p2

    move v4, p3

    move v5, p3

    move v6, p4

    move v7, p4

    move v8, p1

    .line 708
    invoke-virtual/range {v0 .. v8}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->index(SSSSSSSS)V

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    .line 710
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->index(SSSS)V

    :goto_0
    return-void

    .line 712
    :cond_2
    new-instance p1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string p2, "Incorrect primitive type"

    invoke-direct {p1, p2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setColor(FFFF)V
    .locals 1

    .line 351
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/Color;->set(FFFF)Lcom/badlogic/gdx/graphics/Color;

    .line 352
    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->color:Lcom/badlogic/gdx/graphics/Color;

    sget-object p2, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/graphics/Color;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->hasColor:Z

    return-void
.end method

.method public setColor(Lcom/badlogic/gdx/graphics/Color;)V
    .locals 2

    .line 357
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->color:Lcom/badlogic/gdx/graphics/Color;

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->hasColor:Z

    if-nez v1, :cond_1

    sget-object p1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    :cond_1
    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/graphics/Color;->set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    return-void
.end method

.method public setUVRange(FFFF)V
    .locals 1

    .line 362
    iput p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->uOffset:F

    .line 363
    iput p2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vOffset:F

    sub-float v0, p3, p1

    .line 364
    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->uScale:F

    sub-float v0, p4, p2

    .line 365
    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vScale:F

    .line 366
    invoke-static {p1}, Lcom/badlogic/gdx/math/MathUtils;->isZero(F)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {p2}, Lcom/badlogic/gdx/math/MathUtils;->isZero(F)Z

    move-result p1

    if-eqz p1, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-static {p3, p1}, Lcom/badlogic/gdx/math/MathUtils;->isEqual(FF)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-static {p4, p1}, Lcom/badlogic/gdx/math/MathUtils;->isEqual(FF)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    iput-boolean p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->hasUVTransform:Z

    return-void
.end method

.method public setUVRange(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 372
    iput-boolean p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->hasUVTransform:Z

    const/4 p1, 0x0

    .line 373
    iput p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vOffset:F

    iput p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->uOffset:F

    const/high16 p1, 0x3f800000    # 1.0f

    .line 374
    iput p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vScale:F

    iput p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->uScale:F

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 376
    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->hasUVTransform:Z

    .line 377
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getU()F

    move-result v0

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getV()F

    move-result v1

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getU2()F

    move-result v2

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getV2()F

    move-result p1

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->setUVRange(FFFF)V

    :goto_0
    return-void
.end method

.method public setVertexTransform(Lcom/badlogic/gdx/math/Matrix4;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 388
    :goto_0
    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertexTransformationEnabled:Z

    if-eqz v0, :cond_1

    .line 390
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->positionTransform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    .line 391
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->normalTransform:Lcom/badlogic/gdx/math/Matrix3;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Matrix3;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/badlogic/gdx/math/Matrix3;->inv()Lcom/badlogic/gdx/math/Matrix3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/badlogic/gdx/math/Matrix3;->transpose()Lcom/badlogic/gdx/math/Matrix3;

    goto :goto_1

    .line 393
    :cond_1
    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->positionTransform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {p1}, Lcom/badlogic/gdx/math/Matrix4;->idt()Lcom/badlogic/gdx/math/Matrix4;

    .line 394
    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->normalTransform:Lcom/badlogic/gdx/math/Matrix3;

    invoke-virtual {p1}, Lcom/badlogic/gdx/math/Matrix3;->idt()Lcom/badlogic/gdx/math/Matrix3;

    :goto_1
    return-void
.end method

.method public setVertexTransformationEnabled(Z)V
    .locals 0

    .line 405
    iput-boolean p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertexTransformationEnabled:Z

    return-void
.end method

.method public sphere(FFFII)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1045
    invoke-static/range {p0 .. p5}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/SphereShapeBuilder;->build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;FFFII)V

    return-void
.end method

.method public sphere(FFFIIFFFF)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1058
    invoke-static/range {p0 .. p9}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/SphereShapeBuilder;->build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;FFFIIFFFF)V

    return-void
.end method

.method public sphere(Lcom/badlogic/gdx/math/Matrix4;FFFII)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1051
    invoke-static/range {p0 .. p6}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/SphereShapeBuilder;->build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;Lcom/badlogic/gdx/math/Matrix4;FFFII)V

    return-void
.end method

.method public sphere(Lcom/badlogic/gdx/math/Matrix4;FFFIIFFFF)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1065
    invoke-static/range {p0 .. p10}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/SphereShapeBuilder;->build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;Lcom/badlogic/gdx/math/Matrix4;FFFIIFFFF)V

    return-void
.end method

.method public triangle(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;)V
    .locals 1

    const/4 v0, 0x3

    .line 689
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->ensureVertices(I)V

    .line 690
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertex(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;)S

    move-result p1

    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertex(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;)S

    move-result p2

    invoke-virtual {p0, p3}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertex(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;)S

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->triangle(SSS)V

    return-void
.end method

.method public triangle(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;)V
    .locals 2

    .line 700
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertTmp1:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2, v1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object p1

    iget-object p2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertTmp2:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    invoke-virtual {p2, p3, v1, p4, v1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object p2

    iget-object p3, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertTmp3:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    invoke-virtual {p3, p5, v1, p6, v1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->triangle(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;)V

    return-void
.end method

.method public triangle(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)V
    .locals 2

    .line 695
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertTmp1:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, v1, v1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object p1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertTmp2:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    invoke-virtual {v0, p2, v1, v1, v1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object p2

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertTmp3:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    invoke-virtual {v0, p3, v1, v1, v1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->triangle(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;)V

    return-void
.end method

.method public triangle(SSS)V
    .locals 7

    .line 679
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->primitiveType:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p2

    move v4, p3

    move v5, p3

    move v6, p1

    .line 682
    invoke-virtual/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->index(SSSSSS)V

    goto :goto_1

    .line 684
    :cond_1
    new-instance p1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string p2, "Incorrect primitive type"

    invoke-direct {p1, p2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 680
    :cond_2
    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->index(SSS)V

    :goto_1
    return-void
.end method

.method public vertex(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;)S
    .locals 5

    .line 592
    iget-boolean v0, p1, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->hasPosition:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->position:Lcom/badlogic/gdx/math/Vector3;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iget-boolean v2, p1, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->hasNormal:Z

    if-eqz v2, :cond_1

    iget-object v2, p1, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->normal:Lcom/badlogic/gdx/math/Vector3;

    goto :goto_1

    :cond_1
    move-object v2, v1

    :goto_1
    iget-boolean v3, p1, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->hasColor:Z

    if-eqz v3, :cond_2

    iget-object v3, p1, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->color:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_2

    :cond_2
    move-object v3, v1

    :goto_2
    iget-boolean v4, p1, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->hasUV:Z

    if-eqz v4, :cond_3

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->uv:Lcom/badlogic/gdx/math/Vector2;

    :cond_3
    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertex(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector2;)S

    move-result p1

    return p1
.end method

.method public vertex(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector2;)S
    .locals 5

    .line 549
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vindex:I

    const v1, 0xffff

    if-gt v0, v1, :cond_9

    .line 551
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertex:[F

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->posOffset:I

    iget v2, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    aput v2, v0, v1

    .line 552
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->posSize:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertex:[F

    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->posOffset:I

    add-int/2addr v2, v1

    iget v3, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    aput v3, v0, v2

    .line 553
    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->posSize:I

    const/4 v2, 0x2

    if-le v0, v2, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertex:[F

    iget v3, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->posOffset:I

    add-int/2addr v3, v2

    iget v4, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    aput v4, v0, v3

    .line 555
    :cond_1
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->norOffset:I

    if-ltz v0, :cond_3

    if-nez p2, :cond_2

    .line 556
    iget-object p2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->tmpNormal:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p2, p1}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    move-result-object p2

    .line 557
    :cond_2
    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertex:[F

    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->norOffset:I

    iget v3, p2, Lcom/badlogic/gdx/math/Vector3;->x:F

    aput v3, p1, v0

    .line 558
    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertex:[F

    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->norOffset:I

    add-int/2addr v0, v1

    iget v3, p2, Lcom/badlogic/gdx/math/Vector3;->y:F

    aput v3, p1, v0

    .line 559
    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertex:[F

    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->norOffset:I

    add-int/2addr v0, v2

    iget p2, p2, Lcom/badlogic/gdx/math/Vector3;->z:F

    aput p2, p1, v0

    .line 562
    :cond_3
    iget p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->colOffset:I

    if-ltz p1, :cond_5

    if-nez p3, :cond_4

    .line 563
    sget-object p3, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    .line 564
    :cond_4
    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertex:[F

    iget p2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->colOffset:I

    iget v0, p3, Lcom/badlogic/gdx/graphics/Color;->r:F

    aput v0, p1, p2

    .line 565
    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertex:[F

    iget p2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->colOffset:I

    add-int/2addr p2, v1

    iget v0, p3, Lcom/badlogic/gdx/graphics/Color;->g:F

    aput v0, p1, p2

    .line 566
    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertex:[F

    iget p2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->colOffset:I

    add-int/2addr p2, v2

    iget v0, p3, Lcom/badlogic/gdx/graphics/Color;->b:F

    aput v0, p1, p2

    .line 567
    iget p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->colSize:I

    const/4 p2, 0x3

    if-le p1, p2, :cond_7

    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertex:[F

    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->colOffset:I

    add-int/2addr v0, p2

    iget p2, p3, Lcom/badlogic/gdx/graphics/Color;->a:F

    aput p2, p1, v0

    goto :goto_0

    .line 568
    :cond_5
    iget p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->cpOffset:I

    if-lez p1, :cond_7

    if-nez p3, :cond_6

    .line 569
    sget-object p3, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    .line 570
    :cond_6
    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertex:[F

    iget p2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->cpOffset:I

    invoke-virtual {p3}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result p3

    aput p3, p1, p2

    :cond_7
    :goto_0
    if-eqz p4, :cond_8

    .line 573
    iget p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->uvOffset:I

    if-ltz p1, :cond_8

    .line 574
    iget-object p2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertex:[F

    iget p3, p4, Lcom/badlogic/gdx/math/Vector2;->x:F

    aput p3, p2, p1

    .line 575
    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertex:[F

    iget p2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->uvOffset:I

    add-int/2addr p2, v1

    iget p3, p4, Lcom/badlogic/gdx/math/Vector2;->y:F

    aput p3, p1, p2

    .line 578
    :cond_8
    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertex:[F

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->addVertex([FI)V

    .line 579
    iget p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->lastIndex:I

    int-to-short p1, p1

    return p1

    .line 549
    :cond_9
    new-instance p1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string p2, "Too many vertices used"

    invoke-direct {p1, p2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public varargs vertex([F)S
    .locals 3

    .line 584
    array-length v0, p1

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->stride:I

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    :goto_0
    if-gt v1, v0, :cond_0

    .line 586
    invoke-direct {p0, p1, v1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->addVertex([FI)V

    .line 585
    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->stride:I

    add-int/2addr v1, v2

    goto :goto_0

    .line 587
    :cond_0
    iget p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->lastIndex:I

    int-to-short p1, p1

    return p1
.end method
