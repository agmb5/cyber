.class public final Lcom/badlogic/gdx/math/Intersector;
.super Ljava/lang/Object;
.source "Intersector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/math/Intersector$MinimumTranslationVector;,
        Lcom/badlogic/gdx/math/Intersector$SplitTriangle;
    }
.end annotation


# static fields
.field static best:Lcom/badlogic/gdx/math/Vector3;

.field private static final dir:Lcom/badlogic/gdx/math/Vector3;

.field private static final e:Lcom/badlogic/gdx/math/Vector2;

.field private static final ep1:Lcom/badlogic/gdx/math/Vector2;

.field private static final ep2:Lcom/badlogic/gdx/math/Vector2;

.field private static final floatArray:Lcom/badlogic/gdx/utils/FloatArray;

.field private static final floatArray2:Lcom/badlogic/gdx/utils/FloatArray;

.field private static final i:Lcom/badlogic/gdx/math/Vector3;

.field static intersection:Lcom/badlogic/gdx/math/Vector3;

.field private static final ip:Lcom/badlogic/gdx/math/Vector2;

.field private static final p:Lcom/badlogic/gdx/math/Plane;

.field private static final s:Lcom/badlogic/gdx/math/Vector2;

.field private static final start:Lcom/badlogic/gdx/math/Vector3;

.field static tmp:Lcom/badlogic/gdx/math/Vector3;

.field static tmp1:Lcom/badlogic/gdx/math/Vector3;

.field static tmp2:Lcom/badlogic/gdx/math/Vector3;

.field static tmp3:Lcom/badlogic/gdx/math/Vector3;

.field private static final v0:Lcom/badlogic/gdx/math/Vector3;

.field private static final v1:Lcom/badlogic/gdx/math/Vector3;

.field private static final v2:Lcom/badlogic/gdx/math/Vector3;

.field static v2a:Lcom/badlogic/gdx/math/Vector2;

.field static v2b:Lcom/badlogic/gdx/math/Vector2;

.field static v2c:Lcom/badlogic/gdx/math/Vector2;

.field static v2d:Lcom/badlogic/gdx/math/Vector2;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 36
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Intersector;->v0:Lcom/badlogic/gdx/math/Vector3;

    .line 37
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Intersector;->v1:Lcom/badlogic/gdx/math/Vector3;

    .line 38
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Intersector;->v2:Lcom/badlogic/gdx/math/Vector3;

    .line 39
    new-instance v0, Lcom/badlogic/gdx/utils/FloatArray;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/FloatArray;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Intersector;->floatArray:Lcom/badlogic/gdx/utils/FloatArray;

    .line 40
    new-instance v0, Lcom/badlogic/gdx/utils/FloatArray;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/FloatArray;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Intersector;->floatArray2:Lcom/badlogic/gdx/utils/FloatArray;

    .line 147
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Intersector;->ip:Lcom/badlogic/gdx/math/Vector2;

    .line 148
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Intersector;->ep1:Lcom/badlogic/gdx/math/Vector2;

    .line 149
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Intersector;->ep2:Lcom/badlogic/gdx/math/Vector2;

    .line 150
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Intersector;->s:Lcom/badlogic/gdx/math/Vector2;

    .line 151
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Intersector;->e:Lcom/badlogic/gdx/math/Vector2;

    .line 243
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Intersector;->v2a:Lcom/badlogic/gdx/math/Vector2;

    .line 244
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Intersector;->v2b:Lcom/badlogic/gdx/math/Vector2;

    .line 245
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Intersector;->v2c:Lcom/badlogic/gdx/math/Vector2;

    .line 246
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Intersector;->v2d:Lcom/badlogic/gdx/math/Vector2;

    .line 431
    new-instance v0, Lcom/badlogic/gdx/math/Plane;

    new-instance v1, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v1}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/math/Plane;-><init>(Lcom/badlogic/gdx/math/Vector3;F)V

    sput-object v0, Lcom/badlogic/gdx/math/Intersector;->p:Lcom/badlogic/gdx/math/Plane;

    .line 432
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Intersector;->i:Lcom/badlogic/gdx/math/Vector3;

    .line 479
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Intersector;->dir:Lcom/badlogic/gdx/math/Vector3;

    .line 480
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Intersector;->start:Lcom/badlogic/gdx/math/Vector3;

    .line 769
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Intersector;->best:Lcom/badlogic/gdx/math/Vector3;

    .line 770
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Intersector;->tmp:Lcom/badlogic/gdx/math/Vector3;

    .line 771
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Intersector;->tmp1:Lcom/badlogic/gdx/math/Vector3;

    .line 772
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Intersector;->tmp2:Lcom/badlogic/gdx/math/Vector3;

    .line 773
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Intersector;->tmp3:Lcom/badlogic/gdx/math/Vector3;

    .line 1379
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Intersector;->intersection:Lcom/badlogic/gdx/math/Vector3;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static det(FFFF)F
    .locals 0

    mul-float p0, p0, p3

    mul-float p1, p1, p2

    sub-float/2addr p0, p1

    return p0
.end method

.method static detd(DDDD)D
    .locals 0

    mul-double p0, p0, p6

    mul-double p2, p2, p4

    sub-double/2addr p0, p2

    return-wide p0
.end method

.method public static distanceLinePoint(FFFFFF)F
    .locals 2

    sub-float/2addr p2, p0

    mul-float v0, p2, p2

    sub-float/2addr p3, p1

    mul-float v1, p3, p3

    add-float/2addr v0, v1

    float-to-double v0, v0

    .line 250
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    sub-float/2addr p4, p0

    mul-float p4, p4, p3

    sub-float/2addr p5, p1

    mul-float p5, p5, p2

    sub-float/2addr p4, p5

    .line 251
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p0

    div-float/2addr p0, v0

    return p0
.end method

.method public static distanceSegmentPoint(FFFFFF)F
    .locals 7

    .line 256
    sget-object v6, Lcom/badlogic/gdx/math/Intersector;->v2a:Lcom/badlogic/gdx/math/Vector2;

    move v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v6}, Lcom/badlogic/gdx/math/Intersector;->nearestSegmentPoint(FFFFFFLcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object p0

    invoke-virtual {p0, p4, p5}, Lcom/badlogic/gdx/math/Vector2;->dst(FF)F

    move-result p0

    return p0
.end method

.method public static distanceSegmentPoint(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)F
    .locals 1

    .line 261
    sget-object v0, Lcom/badlogic/gdx/math/Intersector;->v2a:Lcom/badlogic/gdx/math/Vector2;

    invoke-static {p0, p1, p2, v0}, Lcom/badlogic/gdx/math/Intersector;->nearestSegmentPoint(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/math/Vector2;->dst(Lcom/badlogic/gdx/math/Vector2;)F

    move-result p0

    return p0
.end method

.method public static intersectBoundsPlaneFast(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;F)Z
    .locals 3

    .line 893
    iget v0, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v1, p2, Lcom/badlogic/gdx/math/Vector3;->x:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    mul-float v0, v0, v1

    iget v1, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v2, p2, Lcom/badlogic/gdx/math/Vector3;->y:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    mul-float v1, v1, v2

    add-float/2addr v0, v1

    iget p1, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget v1, p2, Lcom/badlogic/gdx/math/Vector3;->z:F

    .line 894
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    mul-float p1, p1, v1

    add-float/2addr v0, p1

    .line 897
    invoke-virtual {p2, p0}, Lcom/badlogic/gdx/math/Vector3;->dot(Lcom/badlogic/gdx/math/Vector3;)F

    move-result p0

    sub-float/2addr p0, p3

    .line 900
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    cmpg-float p0, p0, v0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static intersectBoundsPlaneFast(Lcom/badlogic/gdx/math/collision/BoundingBox;Lcom/badlogic/gdx/math/Plane;)Z
    .locals 2

    .line 882
    sget-object v0, Lcom/badlogic/gdx/math/Intersector;->tmp1:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/math/collision/BoundingBox;->getCenter(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    sget-object v1, Lcom/badlogic/gdx/math/Intersector;->tmp2:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/math/collision/BoundingBox;->getDimensions(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p0

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p0

    iget-object v1, p1, Lcom/badlogic/gdx/math/Plane;->normal:Lcom/badlogic/gdx/math/Vector3;

    iget p1, p1, Lcom/badlogic/gdx/math/Plane;->d:F

    invoke-static {v0, p0, v1, p1}, Lcom/badlogic/gdx/math/Intersector;->intersectBoundsPlaneFast(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;F)Z

    move-result p0

    return p0
.end method

.method public static intersectLinePlane(FFFFFFLcom/badlogic/gdx/math/Plane;Lcom/badlogic/gdx/math/Vector3;)F
    .locals 1

    .line 395
    sget-object v0, Lcom/badlogic/gdx/math/Intersector;->tmp:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, p3, p4, p5}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p3

    invoke-virtual {p3, p0, p1, p2}, Lcom/badlogic/gdx/math/Vector3;->sub(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p3

    .line 396
    sget-object p4, Lcom/badlogic/gdx/math/Intersector;->tmp2:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p4, p0, p1, p2}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p0

    .line 397
    invoke-virtual {p6}, Lcom/badlogic/gdx/math/Plane;->getNormal()Lcom/badlogic/gdx/math/Vector3;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/badlogic/gdx/math/Vector3;->dot(Lcom/badlogic/gdx/math/Vector3;)F

    move-result p1

    const/4 p2, 0x0

    cmpl-float p4, p1, p2

    if-eqz p4, :cond_1

    .line 399
    invoke-virtual {p6}, Lcom/badlogic/gdx/math/Plane;->getNormal()Lcom/badlogic/gdx/math/Vector3;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/math/Vector3;->dot(Lcom/badlogic/gdx/math/Vector3;)F

    move-result p2

    invoke-virtual {p6}, Lcom/badlogic/gdx/math/Plane;->getD()F

    move-result p4

    add-float/2addr p2, p4

    neg-float p2, p2

    div-float/2addr p2, p1

    if-eqz p7, :cond_0

    .line 400
    invoke-virtual {p7, p0}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p0

    invoke-virtual {p3, p2}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector3;->add(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    :cond_0
    return p2

    .line 402
    :cond_1
    invoke-virtual {p6, p0}, Lcom/badlogic/gdx/math/Plane;->testPoint(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Plane$PlaneSide;

    move-result-object p1

    sget-object p3, Lcom/badlogic/gdx/math/Plane$PlaneSide;->OnPlane:Lcom/badlogic/gdx/math/Plane$PlaneSide;

    if-ne p1, p3, :cond_3

    if-eqz p7, :cond_2

    .line 403
    invoke-virtual {p7, p0}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    :cond_2
    return p2

    :cond_3
    const/high16 p0, -0x40800000    # -1.0f

    return p0
.end method

.method public static intersectLinePolygon(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Polygon;)Z
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 943
    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/math/Polygon;->getTransformedVertices()[F

    move-result-object v2

    .line 944
    iget v3, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v4, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 945
    array-length v5, v2

    add-int/lit8 v6, v5, -0x2

    .line 946
    aget v6, v2, v6

    add-int/lit8 v7, v5, -0x1

    aget v7, v2, v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v5, :cond_1

    .line 948
    aget v10, v2, v9

    add-int/lit8 v11, v9, 0x1

    aget v11, v2, v11

    sub-float v12, v11, v7

    sub-float v13, v4, v3

    mul-float v13, v13, v12

    sub-float v14, v10, v6

    sub-float v15, v1, v0

    mul-float v15, v15, v14

    sub-float/2addr v13, v15

    const/4 v15, 0x0

    cmpl-float v16, v13, v15

    if-eqz v16, :cond_0

    sub-float v7, v0, v7

    sub-float v6, v3, v6

    mul-float v14, v14, v7

    mul-float v12, v12, v6

    sub-float/2addr v14, v12

    div-float/2addr v14, v13

    cmpl-float v6, v14, v15

    if-ltz v6, :cond_0

    const/high16 v6, 0x3f800000    # 1.0f

    cmpg-float v6, v14, v6

    if-gtz v6, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v9, v9, 0x2

    move v6, v10

    move v7, v11

    goto :goto_0

    :cond_1
    return v8
.end method

.method public static intersectLines(FFFFFFFFLcom/badlogic/gdx/math/Vector2;)Z
    .locals 2

    sub-float/2addr p7, p5

    sub-float/2addr p2, p0

    mul-float v0, p7, p2

    sub-float/2addr p6, p4

    sub-float/2addr p3, p1

    mul-float v1, p6, p3

    sub-float/2addr v0, v1

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-nez v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    if-eqz p8, :cond_1

    sub-float p5, p1, p5

    mul-float p6, p6, p5

    sub-float p4, p0, p4

    mul-float p7, p7, p4

    sub-float/2addr p6, p7

    div-float/2addr p6, v0

    mul-float p2, p2, p6

    add-float/2addr p0, p2

    mul-float p3, p3, p6

    add-float/2addr p1, p3

    .line 933
    invoke-virtual {p8, p0, p1}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static intersectLines(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)Z
    .locals 6

    .line 911
    iget v0, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget p0, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget p1, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v2, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget p2, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v3, p3, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget p3, p3, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr p3, p2

    sub-float/2addr v1, v0

    mul-float v4, p3, v1

    sub-float/2addr v3, v2

    sub-float/2addr p1, p0

    mul-float v5, v3, p1

    sub-float/2addr v4, v5

    const/4 v5, 0x0

    cmpl-float v5, v4, v5

    if-nez v5, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    if-eqz p4, :cond_1

    sub-float p2, p0, p2

    mul-float v3, v3, p2

    sub-float p2, v0, v2

    mul-float p3, p3, p2

    sub-float/2addr v3, p3

    div-float/2addr v3, v4

    mul-float v1, v1, v3

    add-float/2addr v0, v1

    mul-float p1, p1, v3

    add-float/2addr p0, p1

    .line 918
    invoke-virtual {p4, v0, p0}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static intersectPlanes(Lcom/badlogic/gdx/math/Plane;Lcom/badlogic/gdx/math/Plane;Lcom/badlogic/gdx/math/Plane;Lcom/badlogic/gdx/math/Vector3;)Z
    .locals 3

    .line 413
    sget-object v0, Lcom/badlogic/gdx/math/Intersector;->tmp1:Lcom/badlogic/gdx/math/Vector3;

    iget-object v1, p0, Lcom/badlogic/gdx/math/Plane;->normal:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    iget-object v1, p1, Lcom/badlogic/gdx/math/Plane;->normal:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->crs(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 414
    sget-object v0, Lcom/badlogic/gdx/math/Intersector;->tmp2:Lcom/badlogic/gdx/math/Vector3;

    iget-object v1, p1, Lcom/badlogic/gdx/math/Plane;->normal:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    iget-object v1, p2, Lcom/badlogic/gdx/math/Plane;->normal:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->crs(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 415
    sget-object v0, Lcom/badlogic/gdx/math/Intersector;->tmp3:Lcom/badlogic/gdx/math/Vector3;

    iget-object v1, p2, Lcom/badlogic/gdx/math/Plane;->normal:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/math/Plane;->normal:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->crs(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 417
    iget-object v0, p0, Lcom/badlogic/gdx/math/Plane;->normal:Lcom/badlogic/gdx/math/Vector3;

    sget-object v1, Lcom/badlogic/gdx/math/Intersector;->tmp2:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->dot(Lcom/badlogic/gdx/math/Vector3;)F

    move-result v0

    neg-float v0, v0

    .line 418
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v2, 0x358637bd    # 1.0E-6f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 422
    :cond_0
    sget-object v1, Lcom/badlogic/gdx/math/Intersector;->tmp1:Lcom/badlogic/gdx/math/Vector3;

    iget p2, p2, Lcom/badlogic/gdx/math/Plane;->d:F

    invoke-virtual {v1, p2}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    .line 423
    sget-object p2, Lcom/badlogic/gdx/math/Intersector;->tmp2:Lcom/badlogic/gdx/math/Vector3;

    iget p0, p0, Lcom/badlogic/gdx/math/Plane;->d:F

    invoke-virtual {p2, p0}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    .line 424
    sget-object p0, Lcom/badlogic/gdx/math/Intersector;->tmp3:Lcom/badlogic/gdx/math/Vector3;

    iget p1, p1, Lcom/badlogic/gdx/math/Plane;->d:F

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    .line 426
    sget-object p0, Lcom/badlogic/gdx/math/Intersector;->tmp1:Lcom/badlogic/gdx/math/Vector3;

    iget p0, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    sget-object p1, Lcom/badlogic/gdx/math/Intersector;->tmp2:Lcom/badlogic/gdx/math/Vector3;

    iget p1, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    add-float/2addr p0, p1

    sget-object p1, Lcom/badlogic/gdx/math/Intersector;->tmp3:Lcom/badlogic/gdx/math/Vector3;

    iget p1, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    add-float/2addr p0, p1

    sget-object p1, Lcom/badlogic/gdx/math/Intersector;->tmp1:Lcom/badlogic/gdx/math/Vector3;

    iget p1, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    sget-object p2, Lcom/badlogic/gdx/math/Intersector;->tmp2:Lcom/badlogic/gdx/math/Vector3;

    iget p2, p2, Lcom/badlogic/gdx/math/Vector3;->y:F

    add-float/2addr p1, p2

    sget-object p2, Lcom/badlogic/gdx/math/Intersector;->tmp3:Lcom/badlogic/gdx/math/Vector3;

    iget p2, p2, Lcom/badlogic/gdx/math/Vector3;->y:F

    add-float/2addr p1, p2

    sget-object p2, Lcom/badlogic/gdx/math/Intersector;->tmp1:Lcom/badlogic/gdx/math/Vector3;

    iget p2, p2, Lcom/badlogic/gdx/math/Vector3;->z:F

    sget-object v1, Lcom/badlogic/gdx/math/Intersector;->tmp2:Lcom/badlogic/gdx/math/Vector3;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector3;->z:F

    add-float/2addr p2, v1

    sget-object v1, Lcom/badlogic/gdx/math/Intersector;->tmp3:Lcom/badlogic/gdx/math/Vector3;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector3;->z:F

    add-float/2addr p2, v1

    invoke-virtual {p3, p0, p1, p2}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    const/high16 p0, 0x3f800000    # 1.0f

    div-float/2addr p0, v0

    .line 427
    invoke-virtual {p3, p0}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    const/4 p0, 0x1

    return p0
.end method

.method public static intersectPolygonEdges(Lcom/badlogic/gdx/utils/FloatArray;Lcom/badlogic/gdx/utils/FloatArray;)Z
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 225
    iget v2, v0, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    add-int/lit8 v2, v2, -0x2

    iget v3, v1, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    add-int/lit8 v3, v3, -0x2

    .line 226
    iget-object v0, v0, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    iget-object v1, v1, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    .line 227
    aget v4, v0, v2

    add-int/lit8 v5, v2, 0x1

    aget v5, v0, v5

    const/4 v6, 0x0

    const/4 v15, 0x0

    :goto_0
    if-gt v15, v2, :cond_2

    .line 229
    aget v16, v0, v15

    add-int/lit8 v7, v15, 0x1

    aget v17, v0, v7

    .line 230
    aget v7, v1, v3

    add-int/lit8 v8, v3, 0x1

    aget v8, v1, v8

    move v11, v7

    move v12, v8

    const/4 v14, 0x0

    :goto_1
    if-gt v14, v3, :cond_1

    .line 232
    aget v18, v1, v14

    add-int/lit8 v7, v14, 0x1

    aget v19, v1, v7

    const/16 v20, 0x0

    move v7, v4

    move v8, v5

    move/from16 v9, v16

    move/from16 v10, v17

    move/from16 v13, v18

    move/from16 v21, v14

    move/from16 v14, v19

    move/from16 v22, v15

    move-object/from16 v15, v20

    .line 233
    invoke-static/range {v7 .. v15}, Lcom/badlogic/gdx/math/Intersector;->intersectSegments(FFFFFFFFLcom/badlogic/gdx/math/Vector2;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v14, v21, 0x2

    move/from16 v11, v18

    move/from16 v12, v19

    move/from16 v15, v22

    goto :goto_1

    :cond_1
    move/from16 v22, v15

    add-int/lit8 v15, v22, 0x2

    move/from16 v4, v16

    move/from16 v5, v17

    goto :goto_0

    :cond_2
    return v6
.end method

.method public static intersectPolygons(Lcom/badlogic/gdx/math/Polygon;Lcom/badlogic/gdx/math/Polygon;Lcom/badlogic/gdx/math/Polygon;)Z
    .locals 16

    move-object/from16 v0, p2

    .line 160
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/math/Polygon;->getVertices()[F

    move-result-object v1

    array-length v1, v1

    const/4 v2, 0x0

    if-eqz v1, :cond_d

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/math/Polygon;->getVertices()[F

    move-result-object v1

    array-length v1, v1

    if-nez v1, :cond_0

    goto/16 :goto_6

    .line 163
    :cond_0
    sget-object v1, Lcom/badlogic/gdx/math/Intersector;->ip:Lcom/badlogic/gdx/math/Vector2;

    sget-object v3, Lcom/badlogic/gdx/math/Intersector;->ep1:Lcom/badlogic/gdx/math/Vector2;

    sget-object v4, Lcom/badlogic/gdx/math/Intersector;->ep2:Lcom/badlogic/gdx/math/Vector2;

    sget-object v5, Lcom/badlogic/gdx/math/Intersector;->s:Lcom/badlogic/gdx/math/Vector2;

    sget-object v6, Lcom/badlogic/gdx/math/Intersector;->e:Lcom/badlogic/gdx/math/Vector2;

    .line 164
    sget-object v7, Lcom/badlogic/gdx/math/Intersector;->floatArray:Lcom/badlogic/gdx/utils/FloatArray;

    sget-object v8, Lcom/badlogic/gdx/math/Intersector;->floatArray2:Lcom/badlogic/gdx/utils/FloatArray;

    .line 165
    invoke-virtual {v7}, Lcom/badlogic/gdx/utils/FloatArray;->clear()V

    .line 166
    invoke-virtual {v8}, Lcom/badlogic/gdx/utils/FloatArray;->clear()V

    .line 167
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/math/Polygon;->getTransformedVertices()[F

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/badlogic/gdx/utils/FloatArray;->addAll([F)V

    .line 168
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/math/Polygon;->getTransformedVertices()[F

    move-result-object v9

    .line 169
    array-length v10, v9

    const/4 v11, 0x2

    sub-int/2addr v10, v11

    const/4 v12, 0x0

    :goto_0
    const/4 v13, 0x1

    if-gt v12, v10, :cond_9

    .line 170
    aget v14, v9, v12

    add-int/lit8 v15, v12, 0x1

    aget v15, v9, v15

    invoke-virtual {v3, v14, v15}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    if-ge v12, v10, :cond_1

    add-int/lit8 v14, v12, 0x2

    .line 173
    aget v14, v9, v14

    add-int/lit8 v15, v12, 0x3

    aget v15, v9, v15

    invoke-virtual {v4, v14, v15}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    goto :goto_1

    .line 175
    :cond_1
    aget v14, v9, v2

    aget v15, v9, v13

    invoke-virtual {v4, v14, v15}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    .line 176
    :goto_1
    iget v14, v8, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    if-nez v14, :cond_2

    return v2

    .line 177
    :cond_2
    iget v14, v8, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    sub-int/2addr v14, v11

    invoke-virtual {v8, v14}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v14

    iget v15, v8, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    sub-int/2addr v15, v13

    invoke-virtual {v8, v15}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v15

    invoke-virtual {v5, v14, v15}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    const/4 v14, 0x0

    .line 178
    :goto_2
    iget v15, v8, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    if-ge v14, v15, :cond_8

    .line 179
    invoke-virtual {v8, v14}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v15

    add-int/lit8 v2, v14, 0x1

    invoke-virtual {v8, v2}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v2

    invoke-virtual {v6, v15, v2}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    .line 181
    invoke-static {v4, v3, v5}, Lcom/badlogic/gdx/math/Intersector;->pointLineSide(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)I

    move-result v2

    if-lez v2, :cond_3

    const/4 v2, 0x1

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    .line 182
    :goto_3
    invoke-static {v4, v3, v6}, Lcom/badlogic/gdx/math/Intersector;->pointLineSide(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)I

    move-result v15

    if-lez v15, :cond_6

    if-nez v2, :cond_5

    .line 184
    invoke-static {v5, v6, v3, v4, v1}, Lcom/badlogic/gdx/math/Intersector;->intersectLines(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)Z

    .line 185
    iget v2, v7, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    if-lt v2, v11, :cond_4

    iget v2, v7, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    sub-int/2addr v2, v11

    invoke-virtual {v7, v2}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v2

    iget v15, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    cmpl-float v2, v2, v15

    if-nez v2, :cond_4

    iget v2, v7, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    sub-int/2addr v2, v13

    .line 186
    invoke-virtual {v7, v2}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v2

    iget v15, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    cmpl-float v2, v2, v15

    if-eqz v2, :cond_5

    .line 187
    :cond_4
    iget v2, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-virtual {v7, v2}, Lcom/badlogic/gdx/utils/FloatArray;->add(F)V

    .line 188
    iget v2, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v7, v2}, Lcom/badlogic/gdx/utils/FloatArray;->add(F)V

    .line 191
    :cond_5
    iget v2, v6, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-virtual {v7, v2}, Lcom/badlogic/gdx/utils/FloatArray;->add(F)V

    .line 192
    iget v2, v6, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v7, v2}, Lcom/badlogic/gdx/utils/FloatArray;->add(F)V

    goto :goto_4

    :cond_6
    if-eqz v2, :cond_7

    .line 194
    invoke-static {v5, v6, v3, v4, v1}, Lcom/badlogic/gdx/math/Intersector;->intersectLines(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)Z

    .line 195
    iget v2, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-virtual {v7, v2}, Lcom/badlogic/gdx/utils/FloatArray;->add(F)V

    .line 196
    iget v2, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v7, v2}, Lcom/badlogic/gdx/utils/FloatArray;->add(F)V

    .line 198
    :cond_7
    :goto_4
    iget v2, v6, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v15, v6, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v5, v2, v15}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    add-int/lit8 v14, v14, 0x2

    const/4 v2, 0x0

    goto :goto_2

    .line 200
    :cond_8
    invoke-virtual {v8}, Lcom/badlogic/gdx/utils/FloatArray;->clear()V

    .line 201
    invoke-virtual {v8, v7}, Lcom/badlogic/gdx/utils/FloatArray;->addAll(Lcom/badlogic/gdx/utils/FloatArray;)V

    .line 202
    invoke-virtual {v7}, Lcom/badlogic/gdx/utils/FloatArray;->clear()V

    add-int/lit8 v12, v12, 0x2

    const/4 v2, 0x0

    goto/16 :goto_0

    .line 204
    :cond_9
    iget v1, v8, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    if-eqz v1, :cond_c

    if-eqz v0, :cond_b

    .line 206
    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/math/Polygon;->getVertices()[F

    move-result-object v1

    array-length v1, v1

    iget v2, v8, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    if-ne v1, v2, :cond_a

    .line 207
    iget-object v1, v8, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/math/Polygon;->getVertices()[F

    move-result-object v0

    iget v2, v8, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_5

    .line 209
    :cond_a
    invoke-virtual {v8}, Lcom/badlogic/gdx/utils/FloatArray;->toArray()[F

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Polygon;->setVertices([F)V

    :cond_b
    :goto_5
    return v13

    :cond_c
    const/4 v3, 0x0

    return v3

    :cond_d
    :goto_6
    const/4 v3, 0x0

    return v3
.end method

.method public static intersectPolygons(Lcom/badlogic/gdx/utils/FloatArray;Lcom/badlogic/gdx/utils/FloatArray;)Z
    .locals 6

    .line 218
    iget-object v0, p0, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    iget v1, p0, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    iget-object v2, p1, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    iget-object v4, p1, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    const/4 v5, 0x1

    aget v4, v4, v5

    invoke-static {v0, v3, v1, v2, v4}, Lcom/badlogic/gdx/math/Intersector;->isPointInPolygon([FIIFF)Z

    move-result v0

    if-eqz v0, :cond_0

    return v5

    .line 219
    :cond_0
    iget-object v0, p1, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    iget v1, p1, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    iget-object v2, p0, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    aget v2, v2, v3

    iget-object v4, p0, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    aget v4, v4, v5

    invoke-static {v0, v3, v1, v2, v4}, Lcom/badlogic/gdx/math/Intersector;->isPointInPolygon([FIIFF)Z

    move-result v0

    if-eqz v0, :cond_1

    return v5

    .line 220
    :cond_1
    invoke-static {p0, p1}, Lcom/badlogic/gdx/math/Intersector;->intersectPolygonEdges(Lcom/badlogic/gdx/utils/FloatArray;Lcom/badlogic/gdx/utils/FloatArray;)Z

    move-result p0

    return p0
.end method

.method public static intersectRayBounds(Lcom/badlogic/gdx/math/collision/Ray;Lcom/badlogic/gdx/math/collision/BoundingBox;Lcom/badlogic/gdx/math/Vector3;)Z
    .locals 8

    .line 515
    iget-object v0, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/math/collision/BoundingBox;->contains(Lcom/badlogic/gdx/math/Vector3;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    .line 516
    iget-object p0, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p2, p0}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    :cond_0
    return v1

    :cond_1
    const/4 v0, 0x0

    .line 523
    iget-object v2, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget-object v3, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->x:F

    const/4 v4, 0x0

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_2

    iget-object v2, p0, Lcom/badlogic/gdx/math/collision/Ray;->direction:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->x:F

    cmpl-float v2, v2, v4

    if-lez v2, :cond_2

    .line 524
    iget-object v2, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget-object v3, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->x:F

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/badlogic/gdx/math/collision/Ray;->direction:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->x:F

    div-float/2addr v2, v3

    cmpl-float v3, v2, v4

    if-ltz v3, :cond_2

    .line 526
    sget-object v3, Lcom/badlogic/gdx/math/Intersector;->v2:Lcom/badlogic/gdx/math/Vector3;

    iget-object v5, p0, Lcom/badlogic/gdx/math/collision/Ray;->direction:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v5

    iget-object v6, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/math/Vector3;->add(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 527
    iget v5, v3, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget-object v6, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v6, v6, Lcom/badlogic/gdx/math/Vector3;->y:F

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_2

    iget v5, v3, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget-object v6, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v6, v6, Lcom/badlogic/gdx/math/Vector3;->y:F

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_2

    iget v5, v3, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget-object v6, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v6, v6, Lcom/badlogic/gdx/math/Vector3;->z:F

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_2

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget-object v5, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v5, v5, Lcom/badlogic/gdx/math/Vector3;->z:F

    cmpg-float v3, v3, v5

    if-gtz v3, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    .line 534
    :goto_0
    iget-object v3, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget-object v5, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v5, v5, Lcom/badlogic/gdx/math/Vector3;->x:F

    cmpl-float v3, v3, v5

    if-ltz v3, :cond_4

    iget-object v3, p0, Lcom/badlogic/gdx/math/collision/Ray;->direction:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->x:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_4

    .line 535
    iget-object v3, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget-object v5, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    iget v5, v5, Lcom/badlogic/gdx/math/Vector3;->x:F

    sub-float/2addr v3, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/collision/Ray;->direction:Lcom/badlogic/gdx/math/Vector3;

    iget v5, v5, Lcom/badlogic/gdx/math/Vector3;->x:F

    div-float/2addr v3, v5

    cmpl-float v5, v3, v4

    if-ltz v5, :cond_4

    .line 537
    sget-object v5, Lcom/badlogic/gdx/math/Intersector;->v2:Lcom/badlogic/gdx/math/Vector3;

    iget-object v6, p0, Lcom/badlogic/gdx/math/collision/Ray;->direction:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v6

    iget-object v7, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/math/Vector3;->add(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 538
    iget v6, v5, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget-object v7, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v7, v7, Lcom/badlogic/gdx/math/Vector3;->y:F

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_4

    iget v6, v5, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget-object v7, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v7, v7, Lcom/badlogic/gdx/math/Vector3;->y:F

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_4

    iget v6, v5, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget-object v7, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v7, v7, Lcom/badlogic/gdx/math/Vector3;->z:F

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_4

    iget v5, v5, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget-object v6, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v6, v6, Lcom/badlogic/gdx/math/Vector3;->z:F

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_4

    if-eqz v0, :cond_3

    cmpg-float v5, v3, v2

    if-gez v5, :cond_4

    :cond_3
    move v2, v3

    const/4 v0, 0x1

    .line 545
    :cond_4
    iget-object v3, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget-object v5, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v5, v5, Lcom/badlogic/gdx/math/Vector3;->y:F

    cmpg-float v3, v3, v5

    if-gtz v3, :cond_6

    iget-object v3, p0, Lcom/badlogic/gdx/math/collision/Ray;->direction:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->y:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_6

    .line 546
    iget-object v3, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget-object v5, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    iget v5, v5, Lcom/badlogic/gdx/math/Vector3;->y:F

    sub-float/2addr v3, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/collision/Ray;->direction:Lcom/badlogic/gdx/math/Vector3;

    iget v5, v5, Lcom/badlogic/gdx/math/Vector3;->y:F

    div-float/2addr v3, v5

    cmpl-float v5, v3, v4

    if-ltz v5, :cond_6

    .line 548
    sget-object v5, Lcom/badlogic/gdx/math/Intersector;->v2:Lcom/badlogic/gdx/math/Vector3;

    iget-object v6, p0, Lcom/badlogic/gdx/math/collision/Ray;->direction:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v6

    iget-object v7, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/math/Vector3;->add(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 549
    iget v6, v5, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget-object v7, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v7, v7, Lcom/badlogic/gdx/math/Vector3;->x:F

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_6

    iget v6, v5, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget-object v7, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v7, v7, Lcom/badlogic/gdx/math/Vector3;->x:F

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_6

    iget v6, v5, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget-object v7, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v7, v7, Lcom/badlogic/gdx/math/Vector3;->z:F

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_6

    iget v5, v5, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget-object v6, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v6, v6, Lcom/badlogic/gdx/math/Vector3;->z:F

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_6

    if-eqz v0, :cond_5

    cmpg-float v5, v3, v2

    if-gez v5, :cond_6

    :cond_5
    move v2, v3

    const/4 v0, 0x1

    .line 556
    :cond_6
    iget-object v3, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget-object v5, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v5, v5, Lcom/badlogic/gdx/math/Vector3;->y:F

    cmpl-float v3, v3, v5

    if-ltz v3, :cond_8

    iget-object v3, p0, Lcom/badlogic/gdx/math/collision/Ray;->direction:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->y:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_8

    .line 557
    iget-object v3, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget-object v5, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    iget v5, v5, Lcom/badlogic/gdx/math/Vector3;->y:F

    sub-float/2addr v3, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/collision/Ray;->direction:Lcom/badlogic/gdx/math/Vector3;

    iget v5, v5, Lcom/badlogic/gdx/math/Vector3;->y:F

    div-float/2addr v3, v5

    cmpl-float v5, v3, v4

    if-ltz v5, :cond_8

    .line 559
    sget-object v5, Lcom/badlogic/gdx/math/Intersector;->v2:Lcom/badlogic/gdx/math/Vector3;

    iget-object v6, p0, Lcom/badlogic/gdx/math/collision/Ray;->direction:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v6

    iget-object v7, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/math/Vector3;->add(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 560
    iget v6, v5, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget-object v7, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v7, v7, Lcom/badlogic/gdx/math/Vector3;->x:F

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_8

    iget v6, v5, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget-object v7, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v7, v7, Lcom/badlogic/gdx/math/Vector3;->x:F

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_8

    iget v6, v5, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget-object v7, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v7, v7, Lcom/badlogic/gdx/math/Vector3;->z:F

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_8

    iget v5, v5, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget-object v6, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v6, v6, Lcom/badlogic/gdx/math/Vector3;->z:F

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_8

    if-eqz v0, :cond_7

    cmpg-float v5, v3, v2

    if-gez v5, :cond_8

    :cond_7
    move v2, v3

    const/4 v0, 0x1

    .line 567
    :cond_8
    iget-object v3, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget-object v5, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v5, v5, Lcom/badlogic/gdx/math/Vector3;->z:F

    cmpg-float v3, v3, v5

    if-gtz v3, :cond_a

    iget-object v3, p0, Lcom/badlogic/gdx/math/collision/Ray;->direction:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->z:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_a

    .line 568
    iget-object v3, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget-object v5, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    iget v5, v5, Lcom/badlogic/gdx/math/Vector3;->z:F

    sub-float/2addr v3, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/collision/Ray;->direction:Lcom/badlogic/gdx/math/Vector3;

    iget v5, v5, Lcom/badlogic/gdx/math/Vector3;->z:F

    div-float/2addr v3, v5

    cmpl-float v5, v3, v4

    if-ltz v5, :cond_a

    .line 570
    sget-object v5, Lcom/badlogic/gdx/math/Intersector;->v2:Lcom/badlogic/gdx/math/Vector3;

    iget-object v6, p0, Lcom/badlogic/gdx/math/collision/Ray;->direction:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v6

    iget-object v7, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/math/Vector3;->add(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 571
    iget v6, v5, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget-object v7, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v7, v7, Lcom/badlogic/gdx/math/Vector3;->x:F

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_a

    iget v6, v5, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget-object v7, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v7, v7, Lcom/badlogic/gdx/math/Vector3;->x:F

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_a

    iget v6, v5, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget-object v7, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v7, v7, Lcom/badlogic/gdx/math/Vector3;->y:F

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_a

    iget v5, v5, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget-object v6, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v6, v6, Lcom/badlogic/gdx/math/Vector3;->y:F

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_a

    if-eqz v0, :cond_9

    cmpg-float v5, v3, v2

    if-gez v5, :cond_a

    :cond_9
    move v2, v3

    const/4 v0, 0x1

    .line 578
    :cond_a
    iget-object v3, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget-object v5, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v5, v5, Lcom/badlogic/gdx/math/Vector3;->z:F

    cmpl-float v3, v3, v5

    if-ltz v3, :cond_c

    iget-object v3, p0, Lcom/badlogic/gdx/math/collision/Ray;->direction:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->z:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_c

    .line 579
    iget-object v3, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget-object v5, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    iget v5, v5, Lcom/badlogic/gdx/math/Vector3;->z:F

    sub-float/2addr v3, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/collision/Ray;->direction:Lcom/badlogic/gdx/math/Vector3;

    iget v5, v5, Lcom/badlogic/gdx/math/Vector3;->z:F

    div-float/2addr v3, v5

    cmpl-float v4, v3, v4

    if-ltz v4, :cond_c

    .line 581
    sget-object v4, Lcom/badlogic/gdx/math/Intersector;->v2:Lcom/badlogic/gdx/math/Vector3;

    iget-object v5, p0, Lcom/badlogic/gdx/math/collision/Ray;->direction:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v5

    iget-object v6, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/math/Vector3;->add(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 582
    iget v5, v4, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget-object v6, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v6, v6, Lcom/badlogic/gdx/math/Vector3;->x:F

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_c

    iget v5, v4, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget-object v6, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v6, v6, Lcom/badlogic/gdx/math/Vector3;->x:F

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_c

    iget v5, v4, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget-object v6, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v6, v6, Lcom/badlogic/gdx/math/Vector3;->y:F

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_c

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget-object v5, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v5, v5, Lcom/badlogic/gdx/math/Vector3;->y:F

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_c

    if-eqz v0, :cond_b

    cmpg-float v4, v3, v2

    if-gez v4, :cond_c

    :cond_b
    move v2, v3

    goto :goto_1

    :cond_c
    move v1, v0

    :goto_1
    if-eqz v1, :cond_12

    if-eqz p2, :cond_12

    .line 589
    iget-object v0, p0, Lcom/badlogic/gdx/math/collision/Ray;->direction:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    iget-object p0, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/math/Vector3;->add(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 590
    iget p0, p2, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget-object v0, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector3;->x:F

    cmpg-float p0, p0, v0

    if-gez p0, :cond_d

    .line 591
    iget-object p0, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget p0, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    iput p0, p2, Lcom/badlogic/gdx/math/Vector3;->x:F

    goto :goto_2

    .line 592
    :cond_d
    iget p0, p2, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget-object v0, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector3;->x:F

    cmpl-float p0, p0, v0

    if-lez p0, :cond_e

    .line 593
    iget-object p0, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget p0, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    iput p0, p2, Lcom/badlogic/gdx/math/Vector3;->x:F

    .line 595
    :cond_e
    :goto_2
    iget p0, p2, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget-object v0, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector3;->y:F

    cmpg-float p0, p0, v0

    if-gez p0, :cond_f

    .line 596
    iget-object p0, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget p0, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    iput p0, p2, Lcom/badlogic/gdx/math/Vector3;->y:F

    goto :goto_3

    .line 597
    :cond_f
    iget p0, p2, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget-object v0, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector3;->y:F

    cmpl-float p0, p0, v0

    if-lez p0, :cond_10

    .line 598
    iget-object p0, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget p0, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    iput p0, p2, Lcom/badlogic/gdx/math/Vector3;->y:F

    .line 600
    :cond_10
    :goto_3
    iget p0, p2, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget-object v0, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector3;->z:F

    cmpg-float p0, p0, v0

    if-gez p0, :cond_11

    .line 601
    iget-object p0, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget p0, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    iput p0, p2, Lcom/badlogic/gdx/math/Vector3;->z:F

    goto :goto_4

    .line 602
    :cond_11
    iget p0, p2, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget-object v0, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector3;->z:F

    cmpl-float p0, p0, v0

    if-lez p0, :cond_12

    .line 603
    iget-object p0, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget p0, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    iput p0, p2, Lcom/badlogic/gdx/math/Vector3;->z:F

    :cond_12
    :goto_4
    return v1
.end method

.method public static intersectRayBoundsFast(Lcom/badlogic/gdx/math/collision/Ray;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)Z
    .locals 9

    .line 620
    iget-object v0, p0, Lcom/badlogic/gdx/math/collision/Ray;->direction:Lcom/badlogic/gdx/math/Vector3;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector3;->x:F

    const/high16 v1, 0x3f800000    # 1.0f

    div-float v0, v1, v0

    .line 621
    iget-object v2, p0, Lcom/badlogic/gdx/math/collision/Ray;->direction:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->y:F

    div-float v2, v1, v2

    .line 622
    iget-object v3, p0, Lcom/badlogic/gdx/math/collision/Ray;->direction:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->z:F

    div-float/2addr v1, v3

    .line 624
    iget v3, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v4, p2, Lcom/badlogic/gdx/math/Vector3;->x:F

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float v4, v4, v5

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->x:F

    sub-float/2addr v3, v4

    mul-float v3, v3, v0

    .line 625
    iget v4, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v6, p2, Lcom/badlogic/gdx/math/Vector3;->x:F

    mul-float v6, v6, v5

    add-float/2addr v4, v6

    iget-object v6, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    iget v6, v6, Lcom/badlogic/gdx/math/Vector3;->x:F

    sub-float/2addr v4, v6

    mul-float v4, v4, v0

    cmpl-float v0, v3, v4

    if-lez v0, :cond_0

    move v8, v4

    move v4, v3

    move v3, v8

    .line 632
    :cond_0
    iget v0, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v6, p2, Lcom/badlogic/gdx/math/Vector3;->y:F

    mul-float v6, v6, v5

    sub-float/2addr v0, v6

    iget-object v6, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    iget v6, v6, Lcom/badlogic/gdx/math/Vector3;->y:F

    sub-float/2addr v0, v6

    mul-float v0, v0, v2

    .line 633
    iget v6, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v7, p2, Lcom/badlogic/gdx/math/Vector3;->y:F

    mul-float v7, v7, v5

    add-float/2addr v6, v7

    iget-object v7, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    iget v7, v7, Lcom/badlogic/gdx/math/Vector3;->y:F

    sub-float/2addr v6, v7

    mul-float v6, v6, v2

    cmpl-float v2, v0, v6

    if-lez v2, :cond_1

    move v8, v6

    move v6, v0

    move v0, v8

    .line 640
    :cond_1
    iget v2, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget v7, p2, Lcom/badlogic/gdx/math/Vector3;->z:F

    mul-float v7, v7, v5

    sub-float/2addr v2, v7

    iget-object v7, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    iget v7, v7, Lcom/badlogic/gdx/math/Vector3;->z:F

    sub-float/2addr v2, v7

    mul-float v2, v2, v1

    .line 641
    iget p1, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget p2, p2, Lcom/badlogic/gdx/math/Vector3;->z:F

    mul-float p2, p2, v5

    add-float/2addr p1, p2

    iget-object p0, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    iget p0, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    sub-float/2addr p1, p0

    mul-float p1, p1, v1

    cmpl-float p0, v2, p1

    if-lez p0, :cond_2

    move v8, v2

    move v2, p1

    move p1, v8

    .line 648
    :cond_2
    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    invoke-static {p0, v2}, Ljava/lang/Math;->max(FF)F

    move-result p0

    .line 649
    invoke-static {v4, v6}, Ljava/lang/Math;->min(FF)F

    move-result p2

    invoke-static {p2, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/4 p2, 0x0

    cmpl-float p2, p1, p2

    if-ltz p2, :cond_3

    cmpl-float p0, p1, p0

    if-ltz p0, :cond_3

    const/4 p0, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static intersectRayBoundsFast(Lcom/badlogic/gdx/math/collision/Ray;Lcom/badlogic/gdx/math/collision/BoundingBox;)Z
    .locals 2

    .line 612
    sget-object v0, Lcom/badlogic/gdx/math/Intersector;->tmp1:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/math/collision/BoundingBox;->getCenter(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    sget-object v1, Lcom/badlogic/gdx/math/Intersector;->tmp2:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/math/collision/BoundingBox;->getDimensions(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lcom/badlogic/gdx/math/Intersector;->intersectRayBoundsFast(Lcom/badlogic/gdx/math/collision/Ray;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)Z

    move-result p0

    return p0
.end method

.method public static intersectRayOrientedBoundsFast(Lcom/badlogic/gdx/math/collision/Ray;Lcom/badlogic/gdx/math/collision/BoundingBox;Lcom/badlogic/gdx/math/Matrix4;)Z
    .locals 13

    .line 664
    sget-object v0, Lcom/badlogic/gdx/math/Intersector;->tmp:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/math/Matrix4;->getTranslation(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    .line 665
    iget-object v1, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->sub(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    .line 668
    sget-object v1, Lcom/badlogic/gdx/math/Intersector;->tmp1:Lcom/badlogic/gdx/math/Vector3;

    .line 669
    iget-object v2, p2, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    iget-object v4, p2, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v5, 0x1

    aget v4, v4, v5

    iget-object v6, p2, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v7, 0x2

    aget v6, v6, v7

    invoke-virtual {v1, v2, v4, v6}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 670
    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/math/Vector3;->dot(Lcom/badlogic/gdx/math/Vector3;)F

    move-result v2

    .line 671
    iget-object v4, p0, Lcom/badlogic/gdx/math/collision/Ray;->direction:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v4, v1}, Lcom/badlogic/gdx/math/Vector3;->dot(Lcom/badlogic/gdx/math/Vector3;)F

    move-result v1

    .line 673
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const v6, 0x358637bd    # 1.0E-6f

    const/4 v7, 0x0

    const v8, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v4, v4, v6

    if-lez v4, :cond_3

    .line 674
    iget-object v4, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->x:F

    add-float/2addr v4, v2

    div-float/2addr v4, v1

    .line 675
    iget-object v9, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v9, v9, Lcom/badlogic/gdx/math/Vector3;->x:F

    add-float/2addr v2, v9

    div-float/2addr v2, v1

    cmpl-float v1, v4, v2

    if-lez v1, :cond_0

    goto :goto_0

    :cond_0
    move v12, v4

    move v4, v2

    move v2, v12

    :goto_0
    cmpg-float v1, v4, v8

    if-gez v1, :cond_1

    move v8, v4

    :cond_1
    cmpl-float v1, v2, v7

    if-lez v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    cmpg-float v1, v8, v2

    if-gez v1, :cond_5

    return v3

    :cond_3
    neg-float v1, v2

    .line 701
    iget-object v2, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->x:F

    add-float/2addr v2, v1

    cmpl-float v2, v2, v7

    if-gtz v2, :cond_10

    iget-object v2, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->x:F

    add-float/2addr v1, v2

    cmpg-float v1, v1, v7

    if-gez v1, :cond_4

    goto/16 :goto_4

    :cond_4
    const/4 v2, 0x0

    .line 707
    :cond_5
    sget-object v1, Lcom/badlogic/gdx/math/Intersector;->tmp2:Lcom/badlogic/gdx/math/Vector3;

    .line 708
    iget-object v4, p2, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v9, 0x4

    aget v4, v4, v9

    iget-object v9, p2, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v10, 0x5

    aget v9, v9, v10

    iget-object v10, p2, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v11, 0x6

    aget v10, v10, v11

    invoke-virtual {v1, v4, v9, v10}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 710
    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/math/Vector3;->dot(Lcom/badlogic/gdx/math/Vector3;)F

    move-result v4

    .line 711
    iget-object v9, p0, Lcom/badlogic/gdx/math/collision/Ray;->direction:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/math/Vector3;->dot(Lcom/badlogic/gdx/math/Vector3;)F

    move-result v1

    .line 713
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v9

    cmpl-float v9, v9, v6

    if-lez v9, :cond_9

    .line 714
    iget-object v9, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v9, v9, Lcom/badlogic/gdx/math/Vector3;->y:F

    add-float/2addr v9, v4

    div-float/2addr v9, v1

    .line 715
    iget-object v10, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v10, v10, Lcom/badlogic/gdx/math/Vector3;->y:F

    add-float/2addr v4, v10

    div-float/2addr v4, v1

    cmpl-float v1, v9, v4

    if-lez v1, :cond_6

    goto :goto_2

    :cond_6
    move v12, v9

    move v9, v4

    move v4, v12

    :goto_2
    cmpg-float v1, v9, v8

    if-gez v1, :cond_7

    move v8, v9

    :cond_7
    cmpl-float v1, v4, v2

    if-lez v1, :cond_8

    move v2, v4

    :cond_8
    cmpl-float v1, v2, v8

    if-lez v1, :cond_a

    return v3

    :cond_9
    neg-float v1, v4

    .line 732
    iget-object v4, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->y:F

    add-float/2addr v4, v1

    cmpl-float v4, v4, v7

    if-gtz v4, :cond_10

    iget-object v4, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->y:F

    add-float/2addr v1, v4

    cmpg-float v1, v1, v7

    if-gez v1, :cond_a

    goto :goto_4

    .line 738
    :cond_a
    sget-object v1, Lcom/badlogic/gdx/math/Intersector;->tmp3:Lcom/badlogic/gdx/math/Vector3;

    .line 739
    iget-object v4, p2, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v9, 0x8

    aget v4, v4, v9

    iget-object v9, p2, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v10, 0x9

    aget v9, v9, v10

    iget-object p2, p2, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v10, 0xa

    aget p2, p2, v10

    invoke-virtual {v1, v4, v9, p2}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 741
    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/math/Vector3;->dot(Lcom/badlogic/gdx/math/Vector3;)F

    move-result p2

    .line 742
    iget-object p0, p0, Lcom/badlogic/gdx/math/collision/Ray;->direction:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/math/Vector3;->dot(Lcom/badlogic/gdx/math/Vector3;)F

    move-result p0

    .line 744
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v6

    if-lez v0, :cond_e

    .line 745
    iget-object v0, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector3;->z:F

    add-float/2addr v0, p2

    div-float/2addr v0, p0

    .line 746
    iget-object p1, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget p1, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    add-float/2addr p2, p1

    div-float/2addr p2, p0

    cmpl-float p0, v0, p2

    if-lez p0, :cond_b

    goto :goto_3

    :cond_b
    move v12, v0

    move v0, p2

    move p2, v12

    :goto_3
    cmpg-float p0, v0, v8

    if-gez p0, :cond_c

    move v8, v0

    :cond_c
    cmpl-float p0, p2, v2

    if-lez p0, :cond_d

    move v2, p2

    :cond_d
    cmpl-float p0, v2, v8

    if-lez p0, :cond_f

    return v3

    :cond_e
    neg-float p0, p2

    .line 762
    iget-object p2, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget p2, p2, Lcom/badlogic/gdx/math/Vector3;->z:F

    add-float/2addr p2, p0

    cmpl-float p2, p2, v7

    if-gtz p2, :cond_10

    iget-object p1, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget p1, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    add-float/2addr p0, p1

    cmpg-float p0, p0, v7

    if-gez p0, :cond_f

    goto :goto_4

    :cond_f
    return v5

    :cond_10
    :goto_4
    return v3
.end method

.method public static intersectRayPlane(Lcom/badlogic/gdx/math/collision/Ray;Lcom/badlogic/gdx/math/Plane;Lcom/badlogic/gdx/math/Vector3;)Z
    .locals 6

    .line 376
    iget-object v0, p0, Lcom/badlogic/gdx/math/collision/Ray;->direction:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p1}, Lcom/badlogic/gdx/math/Plane;->getNormal()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->dot(Lcom/badlogic/gdx/math/Vector3;)F

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    cmpl-float v4, v0, v3

    if-eqz v4, :cond_2

    .line 378
    iget-object v4, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p1}, Lcom/badlogic/gdx/math/Plane;->getNormal()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/math/Vector3;->dot(Lcom/badlogic/gdx/math/Vector3;)F

    move-result v4

    invoke-virtual {p1}, Lcom/badlogic/gdx/math/Plane;->getD()F

    move-result p1

    add-float/2addr v4, p1

    neg-float p1, v4

    div-float/2addr p1, v0

    cmpg-float v0, p1, v3

    if-gez v0, :cond_0

    return v2

    :cond_0
    if-eqz p2, :cond_1

    .line 381
    iget-object v0, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p2

    sget-object v0, Lcom/badlogic/gdx/math/Intersector;->v0:Lcom/badlogic/gdx/math/Vector3;

    iget-object p0, p0, Lcom/badlogic/gdx/math/collision/Ray;->direction:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/badlogic/gdx/math/Vector3;->add(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    :cond_1
    return v1

    .line 383
    :cond_2
    iget-object v0, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/math/Plane;->testPoint(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Plane$PlaneSide;

    move-result-object p1

    sget-object v0, Lcom/badlogic/gdx/math/Plane$PlaneSide;->OnPlane:Lcom/badlogic/gdx/math/Plane$PlaneSide;

    if-ne p1, v0, :cond_4

    if-eqz p2, :cond_3

    .line 384
    iget-object p0, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p2, p0}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    :cond_3
    return v1

    :cond_4
    return v2
.end method

.method public static intersectRayRay(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)F
    .locals 2

    .line 360
    iget v0, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v1, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float/2addr v0, v1

    .line 361
    iget p2, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget p0, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr p2, p0

    .line 362
    iget p0, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v1, p3, Lcom/badlogic/gdx/math/Vector2;->y:F

    mul-float p0, p0, v1

    iget p1, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v1, p3, Lcom/badlogic/gdx/math/Vector2;->x:F

    mul-float p1, p1, v1

    sub-float/2addr p0, p1

    const/4 p1, 0x0

    cmpl-float p1, p0, p1

    if-nez p1, :cond_0

    const/high16 p0, 0x7f800000    # Float.POSITIVE_INFINITY

    return p0

    .line 366
    :cond_0
    iget p1, p3, Lcom/badlogic/gdx/math/Vector2;->x:F

    div-float/2addr p1, p0

    .line 367
    iget p3, p3, Lcom/badlogic/gdx/math/Vector2;->y:F

    div-float/2addr p3, p0

    mul-float v0, v0, p3

    mul-float p2, p2, p1

    sub-float/2addr v0, p2

    return v0
.end method

.method public static intersectRaySphere(Lcom/badlogic/gdx/math/collision/Ray;Lcom/badlogic/gdx/math/Vector3;FLcom/badlogic/gdx/math/Vector3;)Z
    .locals 6

    .line 489
    iget-object v0, p0, Lcom/badlogic/gdx/math/collision/Ray;->direction:Lcom/badlogic/gdx/math/Vector3;

    iget v1, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget-object v2, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->x:F

    sub-float/2addr v1, v2

    iget v2, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget-object v3, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->y:F

    sub-float/2addr v2, v3

    iget v3, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget-object v4, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->z:F

    sub-float/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/badlogic/gdx/math/Vector3;->dot(FFF)F

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    cmpg-float v2, v0, v2

    if-gez v2, :cond_0

    return v1

    .line 492
    :cond_0
    iget-object v2, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget-object v3, p0, Lcom/badlogic/gdx/math/collision/Ray;->direction:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->x:F

    mul-float v3, v3, v0

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget-object v4, p0, Lcom/badlogic/gdx/math/collision/Ray;->direction:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->y:F

    mul-float v4, v4, v0

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget-object v5, p0, Lcom/badlogic/gdx/math/collision/Ray;->direction:Lcom/badlogic/gdx/math/Vector3;

    iget v5, v5, Lcom/badlogic/gdx/math/Vector3;->z:F

    mul-float v5, v5, v0

    add-float/2addr v4, v5

    invoke-virtual {p1, v2, v3, v4}, Lcom/badlogic/gdx/math/Vector3;->dst2(FFF)F

    move-result p1

    mul-float p2, p2, p2

    cmpl-float v2, p1, p2

    if-lez v2, :cond_1

    return v1

    :cond_1
    if-eqz p3, :cond_2

    .line 496
    iget-object v1, p0, Lcom/badlogic/gdx/math/collision/Ray;->direction:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p3, v1}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p3

    sub-float/2addr p2, p1

    float-to-double p1, p2

    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    double-to-float p1, p1

    sub-float/2addr v0, p1

    invoke-virtual {p3, v0}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p1

    iget-object p0, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p1, p0}, Lcom/badlogic/gdx/math/Vector3;->add(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public static intersectRayTriangle(Lcom/badlogic/gdx/math/collision/Ray;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)Z
    .locals 7

    .line 441
    sget-object v0, Lcom/badlogic/gdx/math/Intersector;->v0:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Vector3;->sub(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    .line 442
    sget-object v1, Lcom/badlogic/gdx/math/Intersector;->v1:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v1, p3}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/math/Vector3;->sub(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v1

    .line 444
    sget-object v2, Lcom/badlogic/gdx/math/Intersector;->v2:Lcom/badlogic/gdx/math/Vector3;

    iget-object v3, p0, Lcom/badlogic/gdx/math/collision/Ray;->direction:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/math/Vector3;->crs(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v2

    .line 445
    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/math/Vector3;->dot(Lcom/badlogic/gdx/math/Vector3;)F

    move-result v3

    .line 446
    invoke-static {v3}, Lcom/badlogic/gdx/math/MathUtils;->isZero(F)Z

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_2

    .line 447
    sget-object v0, Lcom/badlogic/gdx/math/Intersector;->p:Lcom/badlogic/gdx/math/Plane;

    invoke-virtual {v0, p1, p2, p3}, Lcom/badlogic/gdx/math/Plane;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)V

    .line 448
    iget-object v1, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Plane;->testPoint(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Plane$PlaneSide;

    move-result-object v0

    sget-object v1, Lcom/badlogic/gdx/math/Plane$PlaneSide;->OnPlane:Lcom/badlogic/gdx/math/Plane$PlaneSide;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    invoke-static {v0, p1, p2, p3}, Lcom/badlogic/gdx/math/Intersector;->isPointInTriangle(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)Z

    move-result p1

    if-eqz p1, :cond_1

    if-eqz p4, :cond_0

    .line 449
    iget-object p0, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p4, p0}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    :cond_0
    return v5

    :cond_1
    return v6

    :cond_2
    const/high16 p2, 0x3f800000    # 1.0f

    div-float p3, p2, v3

    .line 457
    sget-object v3, Lcom/badlogic/gdx/math/Intersector;->i:Lcom/badlogic/gdx/math/Vector3;

    iget-object v4, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/badlogic/gdx/math/Vector3;->sub(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p1

    .line 458
    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/math/Vector3;->dot(Lcom/badlogic/gdx/math/Vector3;)F

    move-result v2

    mul-float v2, v2, p3

    const/4 v3, 0x0

    cmpg-float v4, v2, v3

    if-ltz v4, :cond_8

    cmpl-float v4, v2, p2

    if-lez v4, :cond_3

    goto :goto_1

    .line 461
    :cond_3
    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/math/Vector3;->crs(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p1

    .line 462
    iget-object v0, p0, Lcom/badlogic/gdx/math/collision/Ray;->direction:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Vector3;->dot(Lcom/badlogic/gdx/math/Vector3;)F

    move-result v0

    mul-float v0, v0, p3

    cmpg-float v4, v0, v3

    if-ltz v4, :cond_8

    add-float/2addr v2, v0

    cmpl-float p2, v2, p2

    if-lez p2, :cond_4

    goto :goto_1

    .line 465
    :cond_4
    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/math/Vector3;->dot(Lcom/badlogic/gdx/math/Vector3;)F

    move-result p1

    mul-float p1, p1, p3

    cmpg-float p2, p1, v3

    if-gez p2, :cond_5

    return v6

    :cond_5
    if-eqz p4, :cond_7

    const p2, 0x358637bd    # 1.0E-6f

    cmpg-float p2, p1, p2

    if-gtz p2, :cond_6

    .line 470
    iget-object p0, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p4, p0}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    goto :goto_0

    .line 472
    :cond_6
    invoke-virtual {p0, p4, p1}, Lcom/badlogic/gdx/math/collision/Ray;->getEndPoint(Lcom/badlogic/gdx/math/Vector3;F)Lcom/badlogic/gdx/math/Vector3;

    :cond_7
    :goto_0
    return v5

    :cond_8
    :goto_1
    return v6
.end method

.method public static intersectRayTriangles(Lcom/badlogic/gdx/math/collision/Ray;Ljava/util/List;Lcom/badlogic/gdx/math/Vector3;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/math/collision/Ray;",
            "Ljava/util/List<",
            "Lcom/badlogic/gdx/math/Vector3;",
            ">;",
            "Lcom/badlogic/gdx/math/Vector3;",
            ")Z"
        }
    .end annotation

    .line 856
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    rem-int/lit8 v0, v0, 0x3

    if-nez v0, :cond_4

    const/4 v0, 0x0

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 858
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ge v2, v4, :cond_1

    .line 859
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/math/Vector3;

    add-int/lit8 v6, v2, 0x1

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/badlogic/gdx/math/Vector3;

    add-int/lit8 v7, v2, 0x2

    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/badlogic/gdx/math/Vector3;

    sget-object v8, Lcom/badlogic/gdx/math/Intersector;->tmp:Lcom/badlogic/gdx/math/Vector3;

    invoke-static {p0, v4, v6, v7, v8}, Lcom/badlogic/gdx/math/Intersector;->intersectRayTriangle(Lcom/badlogic/gdx/math/collision/Ray;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 862
    iget-object v4, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    sget-object v6, Lcom/badlogic/gdx/math/Intersector;->tmp:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v4, v6}, Lcom/badlogic/gdx/math/Vector3;->dst2(Lcom/badlogic/gdx/math/Vector3;)F

    move-result v4

    cmpg-float v6, v4, v1

    if-gez v6, :cond_0

    .line 865
    sget-object v1, Lcom/badlogic/gdx/math/Intersector;->best:Lcom/badlogic/gdx/math/Vector3;

    sget-object v3, Lcom/badlogic/gdx/math/Intersector;->tmp:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move v1, v4

    const/4 v3, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x3

    goto :goto_0

    :cond_1
    if-nez v3, :cond_2

    return v0

    :cond_2
    if-eqz p2, :cond_3

    .line 874
    sget-object p0, Lcom/badlogic/gdx/math/Intersector;->best:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p2, p0}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    :cond_3
    return v5

    .line 856
    :cond_4
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "triangle list size is not a multiple of 3"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method

.method public static intersectRayTriangles(Lcom/badlogic/gdx/math/collision/Ray;[FLcom/badlogic/gdx/math/Vector3;)Z
    .locals 11

    .line 784
    array-length v0, p1

    rem-int/lit8 v0, v0, 0x9

    if-nez v0, :cond_4

    const/4 v0, 0x0

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 786
    :goto_0
    array-length v4, p1

    const/4 v5, 0x1

    if-ge v2, v4, :cond_1

    .line 787
    sget-object v4, Lcom/badlogic/gdx/math/Intersector;->tmp1:Lcom/badlogic/gdx/math/Vector3;

    aget v6, p1, v2

    add-int/lit8 v7, v2, 0x1

    aget v7, p1, v7

    add-int/lit8 v8, v2, 0x2

    aget v8, p1, v8

    invoke-virtual {v4, v6, v7, v8}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v4

    sget-object v6, Lcom/badlogic/gdx/math/Intersector;->tmp2:Lcom/badlogic/gdx/math/Vector3;

    add-int/lit8 v7, v2, 0x3

    aget v7, p1, v7

    add-int/lit8 v8, v2, 0x4

    aget v8, p1, v8

    add-int/lit8 v9, v2, 0x5

    aget v9, p1, v9

    .line 788
    invoke-virtual {v6, v7, v8, v9}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v6

    sget-object v7, Lcom/badlogic/gdx/math/Intersector;->tmp3:Lcom/badlogic/gdx/math/Vector3;

    add-int/lit8 v8, v2, 0x6

    aget v8, p1, v8

    add-int/lit8 v9, v2, 0x7

    aget v9, p1, v9

    add-int/lit8 v10, v2, 0x8

    aget v10, p1, v10

    .line 789
    invoke-virtual {v7, v8, v9, v10}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v7

    sget-object v8, Lcom/badlogic/gdx/math/Intersector;->tmp:Lcom/badlogic/gdx/math/Vector3;

    .line 787
    invoke-static {p0, v4, v6, v7, v8}, Lcom/badlogic/gdx/math/Intersector;->intersectRayTriangle(Lcom/badlogic/gdx/math/collision/Ray;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 792
    iget-object v4, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    sget-object v6, Lcom/badlogic/gdx/math/Intersector;->tmp:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v4, v6}, Lcom/badlogic/gdx/math/Vector3;->dst2(Lcom/badlogic/gdx/math/Vector3;)F

    move-result v4

    cmpg-float v6, v4, v1

    if-gez v6, :cond_0

    .line 795
    sget-object v1, Lcom/badlogic/gdx/math/Intersector;->best:Lcom/badlogic/gdx/math/Vector3;

    sget-object v3, Lcom/badlogic/gdx/math/Intersector;->tmp:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move v1, v4

    const/4 v3, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x9

    goto :goto_0

    :cond_1
    if-nez v3, :cond_2

    return v0

    :cond_2
    if-eqz p2, :cond_3

    .line 804
    sget-object p0, Lcom/badlogic/gdx/math/Intersector;->best:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p2, p0}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    :cond_3
    return v5

    .line 784
    :cond_4
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "triangles array size is not a multiple of 9"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method

.method public static intersectRayTriangles(Lcom/badlogic/gdx/math/collision/Ray;[F[SILcom/badlogic/gdx/math/Vector3;)Z
    .locals 11

    .line 819
    array-length v0, p2

    rem-int/lit8 v0, v0, 0x3

    if-nez v0, :cond_4

    const/4 v0, 0x0

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 821
    :goto_0
    array-length v4, p2

    const/4 v5, 0x1

    if-ge v2, v4, :cond_1

    .line 822
    aget-short v4, p2, v2

    mul-int v4, v4, p3

    add-int/lit8 v6, v2, 0x1

    .line 823
    aget-short v6, p2, v6

    mul-int v6, v6, p3

    add-int/lit8 v7, v2, 0x2

    .line 824
    aget-short v7, p2, v7

    mul-int v7, v7, p3

    .line 826
    sget-object v8, Lcom/badlogic/gdx/math/Intersector;->tmp1:Lcom/badlogic/gdx/math/Vector3;

    aget v9, p1, v4

    add-int/lit8 v10, v4, 0x1

    aget v10, p1, v10

    add-int/lit8 v4, v4, 0x2

    aget v4, p1, v4

    invoke-virtual {v8, v9, v10, v4}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v4

    sget-object v8, Lcom/badlogic/gdx/math/Intersector;->tmp2:Lcom/badlogic/gdx/math/Vector3;

    aget v9, p1, v6

    add-int/lit8 v10, v6, 0x1

    aget v10, p1, v10

    add-int/lit8 v6, v6, 0x2

    aget v6, p1, v6

    .line 827
    invoke-virtual {v8, v9, v10, v6}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v6

    sget-object v8, Lcom/badlogic/gdx/math/Intersector;->tmp3:Lcom/badlogic/gdx/math/Vector3;

    aget v9, p1, v7

    add-int/lit8 v10, v7, 0x1

    aget v10, p1, v10

    add-int/lit8 v7, v7, 0x2

    aget v7, p1, v7

    .line 828
    invoke-virtual {v8, v9, v10, v7}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v7

    sget-object v8, Lcom/badlogic/gdx/math/Intersector;->tmp:Lcom/badlogic/gdx/math/Vector3;

    .line 826
    invoke-static {p0, v4, v6, v7, v8}, Lcom/badlogic/gdx/math/Intersector;->intersectRayTriangle(Lcom/badlogic/gdx/math/collision/Ray;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 831
    iget-object v4, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    sget-object v6, Lcom/badlogic/gdx/math/Intersector;->tmp:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v4, v6}, Lcom/badlogic/gdx/math/Vector3;->dst2(Lcom/badlogic/gdx/math/Vector3;)F

    move-result v4

    cmpg-float v6, v4, v1

    if-gez v6, :cond_0

    .line 834
    sget-object v1, Lcom/badlogic/gdx/math/Intersector;->best:Lcom/badlogic/gdx/math/Vector3;

    sget-object v3, Lcom/badlogic/gdx/math/Intersector;->tmp:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move v1, v4

    const/4 v3, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x3

    goto :goto_0

    :cond_1
    if-nez v3, :cond_2

    return v0

    :cond_2
    if-eqz p4, :cond_3

    .line 843
    sget-object p0, Lcom/badlogic/gdx/math/Intersector;->best:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p4, p0}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    :cond_3
    return v5

    .line 819
    :cond_4
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "triangle list size is not a multiple of 3"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method

.method public static intersectRectangles(Lcom/badlogic/gdx/math/Rectangle;Lcom/badlogic/gdx/math/Rectangle;Lcom/badlogic/gdx/math/Rectangle;)Z
    .locals 3

    .line 968
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Rectangle;->overlaps(Lcom/badlogic/gdx/math/Rectangle;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 969
    iget v0, p0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget v1, p1, Lcom/badlogic/gdx/math/Rectangle;->x:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p2, Lcom/badlogic/gdx/math/Rectangle;->x:F

    .line 970
    iget v0, p0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget v1, p0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    add-float/2addr v0, v1

    iget v1, p1, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget v2, p1, Lcom/badlogic/gdx/math/Rectangle;->width:F

    add-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget v1, p2, Lcom/badlogic/gdx/math/Rectangle;->x:F

    sub-float/2addr v0, v1

    iput v0, p2, Lcom/badlogic/gdx/math/Rectangle;->width:F

    .line 971
    iget v0, p0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget v1, p1, Lcom/badlogic/gdx/math/Rectangle;->y:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p2, Lcom/badlogic/gdx/math/Rectangle;->y:F

    .line 972
    iget v0, p0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget p0, p0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    add-float/2addr v0, p0

    iget p0, p1, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget p1, p1, Lcom/badlogic/gdx/math/Rectangle;->height:F

    add-float/2addr p0, p1

    invoke-static {v0, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    iget p1, p2, Lcom/badlogic/gdx/math/Rectangle;->y:F

    sub-float/2addr p0, p1

    iput p0, p2, Lcom/badlogic/gdx/math/Rectangle;->height:F

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static intersectSegmentCircle(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Circle;Lcom/badlogic/gdx/math/Intersector$MinimumTranslationVector;)Z
    .locals 4

    .line 320
    sget-object v0, Lcom/badlogic/gdx/math/Intersector;->v2a:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/math/Vector2;->sub(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    .line 321
    sget-object v0, Lcom/badlogic/gdx/math/Intersector;->v2b:Lcom/badlogic/gdx/math/Vector2;

    iget v1, p2, Lcom/badlogic/gdx/math/Circle;->x:F

    iget v2, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float/2addr v1, v2

    iget v2, p2, Lcom/badlogic/gdx/math/Circle;->y:F

    iget v3, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    .line 322
    sget-object v0, Lcom/badlogic/gdx/math/Intersector;->v2a:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Vector2;->len()F

    move-result v0

    .line 323
    sget-object v1, Lcom/badlogic/gdx/math/Intersector;->v2b:Lcom/badlogic/gdx/math/Vector2;

    sget-object v2, Lcom/badlogic/gdx/math/Intersector;->v2a:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v2}, Lcom/badlogic/gdx/math/Vector2;->nor()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/math/Vector2;->dot(Lcom/badlogic/gdx/math/Vector2;)F

    move-result v1

    const/4 v2, 0x0

    cmpg-float v2, v1, v2

    if-gtz v2, :cond_0

    .line 325
    sget-object v0, Lcom/badlogic/gdx/math/Intersector;->v2c:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    goto :goto_0

    :cond_0
    cmpl-float v0, v1, v0

    if-ltz v0, :cond_1

    .line 327
    sget-object v0, Lcom/badlogic/gdx/math/Intersector;->v2c:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    goto :goto_0

    .line 329
    :cond_1
    sget-object v0, Lcom/badlogic/gdx/math/Intersector;->v2d:Lcom/badlogic/gdx/math/Vector2;

    sget-object v2, Lcom/badlogic/gdx/math/Intersector;->v2a:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/math/Vector2;->scl(F)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    .line 330
    sget-object v0, Lcom/badlogic/gdx/math/Intersector;->v2c:Lcom/badlogic/gdx/math/Vector2;

    sget-object v1, Lcom/badlogic/gdx/math/Intersector;->v2d:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/math/Vector2;->add(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    .line 333
    :goto_0
    sget-object v0, Lcom/badlogic/gdx/math/Intersector;->v2a:Lcom/badlogic/gdx/math/Vector2;

    sget-object v1, Lcom/badlogic/gdx/math/Intersector;->v2c:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v2, p2, Lcom/badlogic/gdx/math/Circle;->x:F

    sub-float/2addr v1, v2

    sget-object v2, Lcom/badlogic/gdx/math/Intersector;->v2c:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v3, p2, Lcom/badlogic/gdx/math/Circle;->y:F

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    if-eqz p3, :cond_3

    .line 337
    sget-object v0, Lcom/badlogic/gdx/math/Intersector;->v2a:Lcom/badlogic/gdx/math/Vector2;

    sget-object v1, Lcom/badlogic/gdx/math/Vector2;->Zero:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector2;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 338
    sget-object v0, Lcom/badlogic/gdx/math/Intersector;->v2d:Lcom/badlogic/gdx/math/Vector2;

    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v2, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr v1, v2

    iget p0, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget p1, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float/2addr p0, p1

    invoke-virtual {v0, v1, p0}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    .line 339
    iget-object p0, p3, Lcom/badlogic/gdx/math/Intersector$MinimumTranslationVector;->normal:Lcom/badlogic/gdx/math/Vector2;

    sget-object p1, Lcom/badlogic/gdx/math/Intersector;->v2d:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object p0

    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Vector2;->nor()Lcom/badlogic/gdx/math/Vector2;

    .line 340
    iget p0, p2, Lcom/badlogic/gdx/math/Circle;->radius:F

    iput p0, p3, Lcom/badlogic/gdx/math/Intersector$MinimumTranslationVector;->depth:F

    goto :goto_1

    .line 342
    :cond_2
    iget-object p0, p3, Lcom/badlogic/gdx/math/Intersector$MinimumTranslationVector;->normal:Lcom/badlogic/gdx/math/Vector2;

    sget-object p1, Lcom/badlogic/gdx/math/Intersector;->v2a:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object p0

    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Vector2;->nor()Lcom/badlogic/gdx/math/Vector2;

    .line 343
    iget p0, p2, Lcom/badlogic/gdx/math/Circle;->radius:F

    sget-object p1, Lcom/badlogic/gdx/math/Intersector;->v2a:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p1}, Lcom/badlogic/gdx/math/Vector2;->len()F

    move-result p1

    sub-float/2addr p0, p1

    iput p0, p3, Lcom/badlogic/gdx/math/Intersector$MinimumTranslationVector;->depth:F

    .line 347
    :cond_3
    :goto_1
    sget-object p0, Lcom/badlogic/gdx/math/Intersector;->v2a:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Vector2;->len2()F

    move-result p0

    iget p1, p2, Lcom/badlogic/gdx/math/Circle;->radius:F

    iget p2, p2, Lcom/badlogic/gdx/math/Circle;->radius:F

    mul-float p1, p1, p2

    cmpg-float p0, p0, p1

    if-gtz p0, :cond_4

    const/4 p0, 0x1

    goto :goto_2

    :cond_4
    const/4 p0, 0x0

    :goto_2
    return p0
.end method

.method public static intersectSegmentCircle(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;F)Z
    .locals 5

    .line 294
    sget-object v0, Lcom/badlogic/gdx/math/Intersector;->tmp:Lcom/badlogic/gdx/math/Vector3;

    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v2, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float/2addr v1, v2

    iget v2, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v3, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr v2, v3

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 295
    sget-object v0, Lcom/badlogic/gdx/math/Intersector;->tmp1:Lcom/badlogic/gdx/math/Vector3;

    iget v1, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v2, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float/2addr v1, v2

    iget v2, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v4, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 296
    sget-object v0, Lcom/badlogic/gdx/math/Intersector;->tmp:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Vector3;->len()F

    move-result v0

    .line 297
    sget-object v1, Lcom/badlogic/gdx/math/Intersector;->tmp1:Lcom/badlogic/gdx/math/Vector3;

    sget-object v2, Lcom/badlogic/gdx/math/Intersector;->tmp:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v2}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/math/Vector3;->dot(Lcom/badlogic/gdx/math/Vector3;)F

    move-result v1

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_0

    .line 299
    sget-object p1, Lcom/badlogic/gdx/math/Intersector;->tmp2:Lcom/badlogic/gdx/math/Vector3;

    iget v0, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget p0, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {p1, v0, p0, v3}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    goto :goto_0

    :cond_0
    cmpl-float v0, v1, v0

    if-ltz v0, :cond_1

    .line 301
    sget-object p0, Lcom/badlogic/gdx/math/Intersector;->tmp2:Lcom/badlogic/gdx/math/Vector3;

    iget v0, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget p1, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {p0, v0, p1, v3}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    goto :goto_0

    .line 303
    :cond_1
    sget-object p1, Lcom/badlogic/gdx/math/Intersector;->tmp3:Lcom/badlogic/gdx/math/Vector3;

    sget-object v0, Lcom/badlogic/gdx/math/Intersector;->tmp:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 304
    sget-object p1, Lcom/badlogic/gdx/math/Intersector;->tmp2:Lcom/badlogic/gdx/math/Vector3;

    sget-object v0, Lcom/badlogic/gdx/math/Intersector;->tmp3:Lcom/badlogic/gdx/math/Vector3;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v1, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    add-float/2addr v0, v1

    sget-object v1, Lcom/badlogic/gdx/math/Intersector;->tmp3:Lcom/badlogic/gdx/math/Vector3;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget p0, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    add-float/2addr v1, p0

    invoke-virtual {p1, v0, v1, v3}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 307
    :goto_0
    iget p0, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    sget-object p1, Lcom/badlogic/gdx/math/Intersector;->tmp2:Lcom/badlogic/gdx/math/Vector3;

    iget p1, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    sub-float/2addr p0, p1

    .line 308
    iget p1, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    sget-object p2, Lcom/badlogic/gdx/math/Intersector;->tmp2:Lcom/badlogic/gdx/math/Vector3;

    iget p2, p2, Lcom/badlogic/gdx/math/Vector3;->y:F

    sub-float/2addr p1, p2

    mul-float p0, p0, p0

    mul-float p1, p1, p1

    add-float/2addr p0, p1

    cmpg-float p0, p0, p3

    if-gtz p0, :cond_2

    const/4 p0, 0x1

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public static intersectSegmentPlane(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Plane;Lcom/badlogic/gdx/math/Vector3;)Z
    .locals 4

    .line 85
    sget-object v0, Lcom/badlogic/gdx/math/Intersector;->v0:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/badlogic/gdx/math/Vector3;->sub(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p1

    .line 86
    invoke-virtual {p2}, Lcom/badlogic/gdx/math/Plane;->getNormal()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/math/Vector3;->dot(Lcom/badlogic/gdx/math/Vector3;)F

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    cmpl-float v3, v0, v2

    if-nez v3, :cond_0

    return v1

    .line 88
    :cond_0
    invoke-virtual {p2}, Lcom/badlogic/gdx/math/Plane;->getNormal()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/math/Vector3;->dot(Lcom/badlogic/gdx/math/Vector3;)F

    move-result v3

    invoke-virtual {p2}, Lcom/badlogic/gdx/math/Plane;->getD()F

    move-result p2

    add-float/2addr v3, p2

    neg-float p2, v3

    div-float/2addr p2, v0

    cmpg-float v0, p2, v2

    if-ltz v0, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p2, v0

    if-lez v0, :cond_1

    goto :goto_0

    .line 91
    :cond_1
    invoke-virtual {p3, p0}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p0

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector3;->add(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    return v1
.end method

.method public static intersectSegmentPolygon(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Polygon;)Z
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1012
    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/math/Polygon;->getTransformedVertices()[F

    move-result-object v2

    .line 1013
    iget v3, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v4, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 1014
    array-length v5, v2

    add-int/lit8 v6, v5, -0x2

    .line 1015
    aget v6, v2, v6

    add-int/lit8 v7, v5, -0x1

    aget v7, v2, v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v5, :cond_1

    .line 1017
    aget v10, v2, v9

    add-int/lit8 v11, v9, 0x1

    aget v11, v2, v11

    sub-float v12, v11, v7

    sub-float v13, v4, v3

    mul-float v14, v12, v13

    sub-float v15, v10, v6

    sub-float v16, v1, v0

    mul-float v17, v15, v16

    sub-float v14, v14, v17

    const/16 v17, 0x0

    cmpl-float v18, v14, v17

    if-eqz v18, :cond_0

    sub-float v7, v0, v7

    sub-float v6, v3, v6

    mul-float v15, v15, v7

    mul-float v12, v12, v6

    sub-float/2addr v15, v12

    div-float/2addr v15, v14

    cmpl-float v12, v15, v17

    if-ltz v12, :cond_0

    const/high16 v12, 0x3f800000    # 1.0f

    cmpg-float v15, v15, v12

    if-gtz v15, :cond_0

    mul-float v13, v13, v7

    mul-float v16, v16, v6

    sub-float v13, v13, v16

    div-float/2addr v13, v14

    cmpl-float v6, v13, v17

    if-ltz v6, :cond_0

    cmpg-float v6, v13, v12

    if-gtz v6, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v9, v9, 0x2

    move v6, v10

    move v7, v11

    goto :goto_0

    :cond_1
    return v8
.end method

.method public static intersectSegmentRectangle(FFFFLcom/badlogic/gdx/math/Rectangle;)Z
    .locals 13

    move-object/from16 v0, p4

    .line 986
    iget v1, v0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget v2, v0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    add-float/2addr v1, v2

    .line 987
    iget v2, v0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget v3, v0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    add-float/2addr v2, v3

    .line 989
    iget v8, v0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget v9, v0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget v10, v0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    const/4 v12, 0x0

    move v4, p0

    move v5, p1

    move v6, p2

    move/from16 v7, p3

    move v11, v2

    invoke-static/range {v4 .. v12}, Lcom/badlogic/gdx/math/Intersector;->intersectSegments(FFFFFFFFLcom/badlogic/gdx/math/Vector2;)Z

    move-result v3

    const/4 v12, 0x1

    if-eqz v3, :cond_0

    return v12

    .line 991
    :cond_0
    iget v7, v0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget v8, v0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget v10, v0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    const/4 v11, 0x0

    move v3, p0

    move v4, p1

    move v5, p2

    move/from16 v6, p3

    move v9, v1

    invoke-static/range {v3 .. v11}, Lcom/badlogic/gdx/math/Intersector;->intersectSegments(FFFFFFFFLcom/badlogic/gdx/math/Vector2;)Z

    move-result v3

    if-eqz v3, :cond_1

    return v12

    .line 993
    :cond_1
    iget v8, v0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    const/4 v11, 0x0

    move v3, p0

    move v4, p1

    move v5, p2

    move/from16 v6, p3

    move v7, v1

    move v9, v1

    move v10, v2

    invoke-static/range {v3 .. v11}, Lcom/badlogic/gdx/math/Intersector;->intersectSegments(FFFFFFFFLcom/badlogic/gdx/math/Vector2;)Z

    move-result v3

    if-eqz v3, :cond_2

    return v12

    .line 996
    :cond_2
    iget v7, v0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    const/4 v11, 0x0

    move v3, p0

    move v4, p1

    move v5, p2

    move/from16 v6, p3

    move v8, v2

    move v9, v1

    move v10, v2

    invoke-static/range {v3 .. v11}, Lcom/badlogic/gdx/math/Intersector;->intersectSegments(FFFFFFFFLcom/badlogic/gdx/math/Vector2;)Z

    move-result v1

    if-eqz v1, :cond_3

    return v12

    :cond_3
    move v1, p0

    move v2, p1

    .line 999
    invoke-virtual {v0, p0, p1}, Lcom/badlogic/gdx/math/Rectangle;->contains(FF)Z

    move-result v0

    return v0
.end method

.method public static intersectSegmentRectangle(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Rectangle;)Z
    .locals 2

    .line 1004
    iget v0, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget p0, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget p1, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-static {v0, p0, v1, p1, p2}, Lcom/badlogic/gdx/math/Intersector;->intersectSegmentRectangle(FFFFLcom/badlogic/gdx/math/Rectangle;)Z

    move-result p0

    return p0
.end method

.method public static intersectSegments(FFFFFFFFLcom/badlogic/gdx/math/Vector2;)Z
    .locals 4

    sub-float/2addr p7, p5

    sub-float/2addr p2, p0

    mul-float v0, p7, p2

    sub-float/2addr p6, p4

    sub-float/2addr p3, p1

    mul-float v1, p6, p3

    sub-float/2addr v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x0

    cmpl-float v3, v0, v2

    if-nez v3, :cond_0

    return v1

    :cond_0
    sub-float p5, p1, p5

    sub-float p4, p0, p4

    mul-float p6, p6, p5

    mul-float p7, p7, p4

    sub-float/2addr p6, p7

    div-float/2addr p6, v0

    cmpg-float p7, p6, v2

    if-ltz p7, :cond_4

    const/high16 p7, 0x3f800000    # 1.0f

    cmpl-float v3, p6, p7

    if-lez v3, :cond_1

    goto :goto_0

    :cond_1
    mul-float p5, p5, p2

    mul-float p4, p4, p3

    sub-float/2addr p5, p4

    div-float/2addr p5, v0

    cmpg-float p4, p5, v2

    if-ltz p4, :cond_4

    cmpl-float p4, p5, p7

    if-lez p4, :cond_2

    goto :goto_0

    :cond_2
    if-eqz p8, :cond_3

    mul-float p2, p2, p6

    add-float/2addr p0, p2

    mul-float p3, p3, p6

    add-float/2addr p1, p3

    .line 1075
    invoke-virtual {p8, p0, p1}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    :cond_3
    const/4 p0, 0x1

    return p0

    :cond_4
    :goto_0
    return v1
.end method

.method public static intersectSegments(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)Z
    .locals 8

    .line 1044
    iget v0, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget p0, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget p1, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v2, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget p2, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v3, p3, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget p3, p3, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr p3, p2

    sub-float/2addr v1, v0

    mul-float v4, p3, v1

    sub-float/2addr v3, v2

    sub-float/2addr p1, p0

    mul-float v5, v3, p1

    sub-float/2addr v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    cmpl-float v7, v4, v6

    if-nez v7, :cond_0

    return v5

    :cond_0
    sub-float p2, p0, p2

    sub-float v2, v0, v2

    mul-float v3, v3, p2

    mul-float p3, p3, v2

    sub-float/2addr v3, p3

    div-float/2addr v3, v4

    cmpg-float p3, v3, v6

    if-ltz p3, :cond_4

    const/high16 p3, 0x3f800000    # 1.0f

    cmpl-float v7, v3, p3

    if-lez v7, :cond_1

    goto :goto_0

    :cond_1
    mul-float p2, p2, v1

    mul-float v2, v2, p1

    sub-float/2addr p2, v2

    div-float/2addr p2, v4

    cmpg-float v2, p2, v6

    if-ltz v2, :cond_4

    cmpl-float p2, p2, p3

    if-lez p2, :cond_2

    goto :goto_0

    :cond_2
    if-eqz p4, :cond_3

    mul-float v1, v1, v3

    add-float/2addr v0, v1

    mul-float p1, p1, v3

    add-float/2addr p0, p1

    .line 1057
    invoke-virtual {p4, v0, p0}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    :cond_3
    const/4 p0, 0x1

    return p0

    :cond_4
    :goto_0
    return v5
.end method

.method public static isPointInPolygon(Lcom/badlogic/gdx/utils/Array;Lcom/badlogic/gdx/math/Vector2;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/math/Vector2;",
            ">;",
            "Lcom/badlogic/gdx/math/Vector2;",
            ")Z"
        }
    .end annotation

    .line 113
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/Array;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/math/Vector2;

    .line 114
    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget p1, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 116
    :goto_0
    iget v4, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v2, v4, :cond_3

    .line 117
    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/math/Vector2;

    .line 118
    iget v5, v4, Lcom/badlogic/gdx/math/Vector2;->y:F

    cmpg-float v5, v5, p1

    if-gez v5, :cond_0

    iget v5, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    cmpl-float v5, v5, p1

    if-gez v5, :cond_1

    :cond_0
    iget v5, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    cmpg-float v5, v5, p1

    if-gez v5, :cond_2

    iget v5, v4, Lcom/badlogic/gdx/math/Vector2;->y:F

    cmpl-float v5, v5, p1

    if-ltz v5, :cond_2

    .line 119
    :cond_1
    iget v5, v4, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v6, v4, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float v6, p1, v6

    iget v7, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v8, v4, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr v7, v8

    div-float/2addr v6, v7

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v7, v4, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float/2addr v0, v7

    mul-float v6, v6, v0

    add-float/2addr v5, v6

    cmpg-float v0, v5, v1

    if-gez v0, :cond_2

    xor-int/lit8 v0, v3, 0x1

    move v3, v0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    move-object v0, v4

    goto :goto_0

    :cond_3
    return v3
.end method

.method public static isPointInPolygon([FIIFF)Z
    .locals 7

    .line 131
    aget v0, p0, p1

    add-int/lit8 v1, p1, 0x1

    aget v1, p0, v1

    add-int/lit8 v2, p1, 0x3

    add-int/2addr p1, p2

    const/4 p2, 0x0

    move v3, v1

    :goto_0
    if-ge v2, p1, :cond_3

    .line 134
    aget v4, p0, v2

    cmpg-float v5, v4, p4

    if-gez v5, :cond_0

    cmpl-float v5, v3, p4

    if-gez v5, :cond_1

    :cond_0
    cmpg-float v5, v3, p4

    if-gez v5, :cond_2

    cmpl-float v5, v4, p4

    if-ltz v5, :cond_2

    :cond_1
    add-int/lit8 v5, v2, -0x1

    .line 136
    aget v5, p0, v5

    sub-float v6, p4, v4

    sub-float/2addr v3, v4

    div-float/2addr v6, v3

    add-int/lit8 v3, v2, -0x3

    .line 137
    aget v3, p0, v3

    sub-float/2addr v3, v5

    mul-float v6, v6, v3

    add-float/2addr v5, v6

    cmpg-float v3, v5, p3

    if-gez v3, :cond_2

    xor-int/lit8 p2, p2, 0x1

    :cond_2
    add-int/lit8 v2, v2, 0x2

    move v3, v4

    goto :goto_0

    :cond_3
    cmpg-float p1, v1, p4

    if-gez p1, :cond_4

    cmpl-float p1, v3, p4

    if-gez p1, :cond_5

    :cond_4
    cmpg-float p1, v3, p4

    if-gez p1, :cond_6

    cmpl-float p1, v1, p4

    if-ltz p1, :cond_6

    :cond_5
    sub-float/2addr p4, v1

    sub-float/2addr v3, v1

    div-float/2addr p4, v3

    add-int/lit8 v2, v2, -0x3

    .line 142
    aget p0, p0, v2

    sub-float/2addr p0, v0

    mul-float p4, p4, p0

    add-float/2addr v0, p4

    cmpg-float p0, v0, p3

    if-gez p0, :cond_6

    xor-int/lit8 p2, p2, 0x1

    :cond_6
    return p2
.end method

.method public static isPointInTriangle(FFFFFFFF)Z
    .locals 6

    sub-float v0, p0, p2

    sub-float v1, p1, p3

    sub-float v2, p4, p2

    mul-float v2, v2, v1

    sub-float v3, p5, p3

    mul-float v3, v3, v0

    sub-float/2addr v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    sub-float p2, p6, p2

    mul-float p2, p2, v1

    sub-float p3, p7, p3

    mul-float p3, p3, v0

    sub-float/2addr p2, p3

    cmpl-float p2, p2, v3

    if-lez p2, :cond_1

    const/4 p2, 0x1

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    :goto_1
    if-ne p2, v2, :cond_2

    return v5

    :cond_2
    sub-float/2addr p6, p4

    sub-float/2addr p1, p5

    mul-float p6, p6, p1

    sub-float/2addr p7, p5

    sub-float/2addr p0, p4

    mul-float p7, p7, p0

    sub-float/2addr p6, p7

    cmpl-float p0, p6, v3

    if-lez p0, :cond_3

    const/4 p0, 0x1

    goto :goto_2

    :cond_3
    const/4 p0, 0x0

    :goto_2
    if-eq p0, v2, :cond_4

    return v5

    :cond_4
    return v4
.end method

.method public static isPointInTriangle(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)Z
    .locals 8

    .line 66
    iget v0, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float/2addr v0, v1

    .line 67
    iget v1, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v2, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr v1, v2

    .line 68
    iget v2, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v3, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float/2addr v2, v3

    mul-float v2, v2, v1

    iget v3, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v4, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr v3, v4

    mul-float v3, v3, v0

    sub-float/2addr v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 69
    :goto_0
    iget v6, p3, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v7, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float/2addr v6, v7

    mul-float v6, v6, v1

    iget v1, p3, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget p1, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr v1, p1

    mul-float v1, v1, v0

    sub-float/2addr v6, v1

    cmpl-float p1, v6, v3

    if-lez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    if-ne p1, v2, :cond_2

    return v5

    .line 70
    :cond_2
    iget p1, p3, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v0, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float/2addr p1, v0

    iget v0, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v1, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr v0, v1

    mul-float p1, p1, v0

    iget p3, p3, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v0, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr p3, v0

    iget p0, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget p2, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float/2addr p0, p2

    mul-float p3, p3, p0

    sub-float/2addr p1, p3

    cmpl-float p0, p1, v3

    if-lez p0, :cond_3

    const/4 p0, 0x1

    goto :goto_2

    :cond_3
    const/4 p0, 0x0

    :goto_2
    if-eq p0, v2, :cond_4

    return v5

    :cond_4
    return v4
.end method

.method public static isPointInTriangle(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)Z
    .locals 3

    .line 49
    sget-object v0, Lcom/badlogic/gdx/math/Intersector;->v0:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/badlogic/gdx/math/Vector3;->sub(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 50
    sget-object p1, Lcom/badlogic/gdx/math/Intersector;->v1:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p2

    invoke-virtual {p2, p0}, Lcom/badlogic/gdx/math/Vector3;->sub(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 51
    sget-object p2, Lcom/badlogic/gdx/math/Intersector;->v2:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p2, p3}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p3

    invoke-virtual {p3, p0}, Lcom/badlogic/gdx/math/Vector3;->sub(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 53
    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Vector3;->dot(Lcom/badlogic/gdx/math/Vector3;)F

    move-result p0

    .line 54
    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/math/Vector3;->dot(Lcom/badlogic/gdx/math/Vector3;)F

    move-result p3

    .line 55
    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/math/Vector3;->dot(Lcom/badlogic/gdx/math/Vector3;)F

    move-result v0

    .line 56
    invoke-virtual {p2, p2}, Lcom/badlogic/gdx/math/Vector3;->dot(Lcom/badlogic/gdx/math/Vector3;)F

    move-result p2

    mul-float v1, v0, p3

    mul-float p2, p2, p0

    sub-float/2addr v1, p2

    const/4 p2, 0x0

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    return p2

    .line 59
    :cond_0
    invoke-virtual {p1, p1}, Lcom/badlogic/gdx/math/Vector3;->dot(Lcom/badlogic/gdx/math/Vector3;)F

    move-result p1

    mul-float p0, p0, v0

    mul-float p3, p3, p1

    sub-float/2addr p0, p3

    cmpg-float p0, p0, v2

    if-gez p0, :cond_1

    return p2

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static nearestSegmentPoint(FFFFFFLcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;
    .locals 5

    sub-float v0, p2, p0

    sub-float v1, p3, p1

    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    const/4 v3, 0x0

    cmpl-float v4, v2, v3

    if-nez v4, :cond_0

    .line 280
    invoke-virtual {p6, p0, p1}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object p0

    return-object p0

    :cond_0
    sub-float/2addr p4, p0

    mul-float p4, p4, v0

    sub-float/2addr p5, p1

    mul-float p5, p5, v1

    add-float/2addr p4, p5

    div-float/2addr p4, v2

    cmpg-float p5, p4, v3

    if-gez p5, :cond_1

    .line 282
    invoke-virtual {p6, p0, p1}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object p0

    return-object p0

    :cond_1
    const/high16 p5, 0x3f800000    # 1.0f

    cmpl-float p5, p4, p5

    if-lez p5, :cond_2

    .line 283
    invoke-virtual {p6, p2, p3}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object p0

    return-object p0

    :cond_2
    mul-float v0, v0, p4

    add-float/2addr p0, v0

    mul-float p4, p4, v1

    add-float/2addr p1, p4

    .line 284
    invoke-virtual {p6, p0, p1}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object p0

    return-object p0
.end method

.method public static nearestSegmentPoint(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;
    .locals 5

    .line 266
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector2;->dst2(Lcom/badlogic/gdx/math/Vector2;)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-nez v2, :cond_0

    .line 267
    invoke-virtual {p3, p0}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object p0

    return-object p0

    .line 268
    :cond_0
    iget v2, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v3, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float/2addr v2, v3

    iget v3, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v4, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float/2addr v3, v4

    mul-float v2, v2, v3

    iget p2, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v3, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr p2, v3

    iget v3, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v4, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr v3, v4

    mul-float p2, p2, v3

    add-float/2addr v2, p2

    div-float/2addr v2, v0

    cmpg-float p2, v2, v1

    if-gez p2, :cond_1

    .line 269
    invoke-virtual {p3, p0}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object p0

    return-object p0

    :cond_1
    const/high16 p2, 0x3f800000    # 1.0f

    cmpl-float p2, v2, p2

    if-lez p2, :cond_2

    .line 270
    invoke-virtual {p3, p1}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object p0

    return-object p0

    .line 271
    :cond_2
    iget p2, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v0, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v1, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float/2addr v0, v1

    mul-float v0, v0, v2

    add-float/2addr p2, v0

    iget v0, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget p1, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget p0, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr p1, p0

    mul-float v2, v2, p1

    add-float/2addr v0, v2

    invoke-virtual {p3, p2, v0}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object p0

    return-object p0
.end method

.method public static overlapConvexPolygons(Lcom/badlogic/gdx/math/Polygon;Lcom/badlogic/gdx/math/Polygon;)Z
    .locals 1

    const/4 v0, 0x0

    .line 1124
    invoke-static {p0, p1, v0}, Lcom/badlogic/gdx/math/Intersector;->overlapConvexPolygons(Lcom/badlogic/gdx/math/Polygon;Lcom/badlogic/gdx/math/Polygon;Lcom/badlogic/gdx/math/Intersector$MinimumTranslationVector;)Z

    move-result p0

    return p0
.end method

.method public static overlapConvexPolygons(Lcom/badlogic/gdx/math/Polygon;Lcom/badlogic/gdx/math/Polygon;Lcom/badlogic/gdx/math/Intersector$MinimumTranslationVector;)Z
    .locals 0

    .line 1135
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Polygon;->getTransformedVertices()[F

    move-result-object p0

    invoke-virtual {p1}, Lcom/badlogic/gdx/math/Polygon;->getTransformedVertices()[F

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/badlogic/gdx/math/Intersector;->overlapConvexPolygons([F[FLcom/badlogic/gdx/math/Intersector$MinimumTranslationVector;)Z

    move-result p0

    return p0
.end method

.method public static overlapConvexPolygons([FII[FIILcom/badlogic/gdx/math/Intersector$MinimumTranslationVector;)Z
    .locals 9

    if-eqz p6, :cond_0

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    .line 1158
    iput v0, p6, Lcom/badlogic/gdx/math/Intersector$MinimumTranslationVector;->depth:F

    .line 1159
    iget-object v0, p6, Lcom/badlogic/gdx/math/Intersector$MinimumTranslationVector;->normal:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Vector2;->setZero()Lcom/badlogic/gdx/math/Vector2;

    :cond_0
    const/4 v8, 0x1

    move-object v1, p3

    move v2, p4

    move v3, p5

    move-object v4, p0

    move v5, p1

    move v6, p2

    move-object v7, p6

    .line 1161
    invoke-static/range {v1 .. v8}, Lcom/badlogic/gdx/math/Intersector;->overlapsOnAxisOfShape([FII[FIILcom/badlogic/gdx/math/Intersector$MinimumTranslationVector;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v8, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    .line 1163
    invoke-static/range {v1 .. v8}, Lcom/badlogic/gdx/math/Intersector;->overlapsOnAxisOfShape([FII[FIILcom/badlogic/gdx/math/Intersector$MinimumTranslationVector;Z)Z

    move-result v0

    :cond_1
    if-nez v0, :cond_3

    if-eqz p6, :cond_2

    const/4 p0, 0x0

    .line 1168
    iput p0, p6, Lcom/badlogic/gdx/math/Intersector$MinimumTranslationVector;->depth:F

    .line 1169
    iget-object p0, p6, Lcom/badlogic/gdx/math/Intersector$MinimumTranslationVector;->normal:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Vector2;->setZero()Lcom/badlogic/gdx/math/Vector2;

    :cond_2
    const/4 p0, 0x0

    return p0

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method public static overlapConvexPolygons([F[FLcom/badlogic/gdx/math/Intersector$MinimumTranslationVector;)Z
    .locals 7

    .line 1140
    array-length v2, p0

    array-length v5, p1

    const/4 v1, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v6, p2

    invoke-static/range {v0 .. v6}, Lcom/badlogic/gdx/math/Intersector;->overlapConvexPolygons([FII[FIILcom/badlogic/gdx/math/Intersector$MinimumTranslationVector;)Z

    move-result p0

    return p0
.end method

.method public static overlaps(Lcom/badlogic/gdx/math/Circle;Lcom/badlogic/gdx/math/Circle;)Z
    .locals 0

    .line 1088
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Circle;->overlaps(Lcom/badlogic/gdx/math/Circle;)Z

    move-result p0

    return p0
.end method

.method public static overlaps(Lcom/badlogic/gdx/math/Circle;Lcom/badlogic/gdx/math/Rectangle;)Z
    .locals 5

    .line 1096
    iget v0, p0, Lcom/badlogic/gdx/math/Circle;->x:F

    .line 1097
    iget v1, p0, Lcom/badlogic/gdx/math/Circle;->y:F

    .line 1099
    iget v2, p0, Lcom/badlogic/gdx/math/Circle;->x:F

    iget v3, p1, Lcom/badlogic/gdx/math/Rectangle;->x:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    .line 1100
    iget v0, p1, Lcom/badlogic/gdx/math/Rectangle;->x:F

    goto :goto_0

    .line 1101
    :cond_0
    iget v2, p0, Lcom/badlogic/gdx/math/Circle;->x:F

    iget v3, p1, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget v4, p1, Lcom/badlogic/gdx/math/Rectangle;->width:F

    add-float/2addr v3, v4

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    .line 1102
    iget v0, p1, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget v2, p1, Lcom/badlogic/gdx/math/Rectangle;->width:F

    add-float/2addr v0, v2

    .line 1105
    :cond_1
    :goto_0
    iget v2, p0, Lcom/badlogic/gdx/math/Circle;->y:F

    iget v3, p1, Lcom/badlogic/gdx/math/Rectangle;->y:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2

    .line 1106
    iget v1, p1, Lcom/badlogic/gdx/math/Rectangle;->y:F

    goto :goto_1

    .line 1107
    :cond_2
    iget v2, p0, Lcom/badlogic/gdx/math/Circle;->y:F

    iget v3, p1, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget v4, p1, Lcom/badlogic/gdx/math/Rectangle;->height:F

    add-float/2addr v3, v4

    cmpl-float v2, v2, v3

    if-lez v2, :cond_3

    .line 1108
    iget v1, p1, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget p1, p1, Lcom/badlogic/gdx/math/Rectangle;->height:F

    add-float/2addr v1, p1

    .line 1111
    :cond_3
    :goto_1
    iget p1, p0, Lcom/badlogic/gdx/math/Circle;->x:F

    sub-float/2addr v0, p1

    mul-float v0, v0, v0

    .line 1113
    iget p1, p0, Lcom/badlogic/gdx/math/Circle;->y:F

    sub-float/2addr v1, p1

    mul-float v1, v1, v1

    add-float/2addr v0, v1

    .line 1116
    iget p1, p0, Lcom/badlogic/gdx/math/Circle;->radius:F

    iget p0, p0, Lcom/badlogic/gdx/math/Circle;->radius:F

    mul-float p1, p1, p0

    cmpg-float p0, v0, p1

    if-gez p0, :cond_4

    const/4 p0, 0x1

    goto :goto_2

    :cond_4
    const/4 p0, 0x0

    :goto_2
    return p0
.end method

.method public static overlaps(Lcom/badlogic/gdx/math/Rectangle;Lcom/badlogic/gdx/math/Rectangle;)Z
    .locals 0

    .line 1092
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Rectangle;->overlaps(Lcom/badlogic/gdx/math/Rectangle;)Z

    move-result p0

    return p0
.end method

.method private static overlapsOnAxisOfShape([FII[FIILcom/badlogic/gdx/math/Intersector$MinimumTranslationVector;Z)Z
    .locals 16

    move-object/from16 v0, p6

    add-int v1, p1, p2

    add-int v2, p4, p5

    move/from16 v3, p1

    :goto_0
    const/4 v4, 0x1

    if-ge v3, v1, :cond_14

    .line 1189
    aget v5, p0, v3

    add-int/lit8 v6, v3, 0x1

    .line 1190
    aget v6, p0, v6

    add-int/lit8 v7, v3, 0x2

    .line 1191
    rem-int v8, v7, p2

    aget v8, p0, v8

    add-int/lit8 v3, v3, 0x3

    .line 1192
    rem-int v3, v3, p2

    aget v3, p0, v3

    sub-float/2addr v6, v3

    sub-float/2addr v5, v8

    neg-float v3, v5

    mul-float v5, v6, v6

    mul-float v8, v3, v3

    add-float/2addr v5, v8

    float-to-double v8, v5

    .line 1198
    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    double-to-float v5, v8

    div-float/2addr v6, v5

    div-float/2addr v3, v5

    const v5, -0x800001

    const v8, 0x7f7fffff    # Float.MAX_VALUE

    move/from16 v9, p1

    const v10, 0x7f7fffff    # Float.MAX_VALUE

    const v11, -0x800001

    :goto_1
    if-ge v9, v1, :cond_0

    .line 1206
    aget v12, p0, v9

    mul-float v12, v12, v6

    add-int/lit8 v13, v9, 0x1

    aget v13, p0, v13

    mul-float v13, v13, v3

    add-float/2addr v12, v13

    .line 1207
    invoke-static {v10, v12}, Ljava/lang/Math;->min(FF)F

    move-result v10

    .line 1208
    invoke-static {v11, v12}, Ljava/lang/Math;->max(FF)F

    move-result v11

    add-int/lit8 v9, v9, 0x2

    goto :goto_1

    :cond_0
    move/from16 v9, p4

    :goto_2
    if-ge v9, v2, :cond_1

    .line 1216
    aget v12, p3, v9

    mul-float v12, v12, v6

    add-int/lit8 v13, v9, 0x1

    aget v13, p3, v13

    mul-float v13, v13, v3

    add-float/2addr v12, v13

    .line 1217
    invoke-static {v8, v12}, Ljava/lang/Math;->min(FF)F

    move-result v8

    .line 1218
    invoke-static {v5, v12}, Ljava/lang/Math;->max(FF)F

    move-result v5

    add-int/lit8 v9, v9, 0x2

    goto :goto_2

    :cond_1
    const/4 v9, 0x0

    cmpg-float v12, v11, v8

    if-ltz v12, :cond_13

    cmpg-float v12, v5, v10

    if-gez v12, :cond_2

    goto/16 :goto_f

    :cond_2
    if-eqz v0, :cond_12

    .line 1225
    invoke-static {v11, v5}, Ljava/lang/Math;->min(FF)F

    move-result v12

    invoke-static {v10, v8}, Ljava/lang/Math;->max(FF)F

    move-result v13

    sub-float/2addr v12, v13

    cmpg-float v13, v10, v8

    if-gez v13, :cond_3

    cmpl-float v13, v11, v5

    if-lez v13, :cond_3

    const/4 v13, 0x1

    goto :goto_3

    :cond_3
    const/4 v13, 0x0

    :goto_3
    cmpg-float v14, v8, v10

    if-gez v14, :cond_4

    cmpl-float v14, v5, v11

    if-lez v14, :cond_4

    const/4 v14, 0x1

    goto :goto_4

    :cond_4
    const/4 v14, 0x0

    :goto_4
    const/4 v15, 0x0

    if-nez v13, :cond_6

    if-eqz v14, :cond_5

    goto :goto_5

    :cond_5
    const/4 v5, 0x0

    goto :goto_6

    :cond_6
    :goto_5
    sub-float v15, v10, v8

    .line 1232
    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v15

    sub-float/2addr v11, v5

    .line 1233
    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 1234
    invoke-static {v15, v5}, Ljava/lang/Math;->min(FF)F

    move-result v11

    add-float/2addr v12, v11

    .line 1237
    :goto_6
    iget v11, v0, Lcom/badlogic/gdx/math/Intersector$MinimumTranslationVector;->depth:F

    cmpl-float v11, v11, v12

    if-lez v11, :cond_12

    .line 1238
    iput v12, v0, Lcom/badlogic/gdx/math/Intersector$MinimumTranslationVector;->depth:F

    if-eqz p7, :cond_a

    cmpg-float v8, v10, v8

    if-gez v8, :cond_7

    const/4 v8, 0x1

    goto :goto_7

    :cond_7
    const/4 v8, 0x0

    :goto_7
    if-eqz v8, :cond_8

    goto :goto_8

    :cond_8
    neg-float v6, v6

    :goto_8
    if-eqz v8, :cond_9

    goto :goto_b

    :cond_9
    neg-float v3, v3

    goto :goto_b

    :cond_a
    cmpl-float v8, v10, v8

    if-lez v8, :cond_b

    const/4 v8, 0x1

    goto :goto_9

    :cond_b
    const/4 v8, 0x0

    :goto_9
    if-eqz v8, :cond_c

    goto :goto_a

    :cond_c
    neg-float v6, v6

    :goto_a
    if-eqz v8, :cond_9

    :goto_b
    if-nez v13, :cond_d

    if-eqz v14, :cond_11

    :cond_d
    cmpl-float v5, v15, v5

    if-lez v5, :cond_e

    goto :goto_c

    :cond_e
    const/4 v4, 0x0

    :goto_c
    if-eqz v4, :cond_f

    goto :goto_d

    :cond_f
    neg-float v6, v6

    :goto_d
    if-eqz v4, :cond_10

    goto :goto_e

    :cond_10
    neg-float v3, v3

    .line 1256
    :cond_11
    :goto_e
    iget-object v4, v0, Lcom/badlogic/gdx/math/Intersector$MinimumTranslationVector;->normal:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v4, v6, v3}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    :cond_12
    move v3, v7

    goto/16 :goto_0

    :cond_13
    :goto_f
    return v9

    :cond_14
    return v4
.end method

.method public static pointLineSide(FFFFFF)I
    .locals 0

    sub-float/2addr p2, p0

    sub-float/2addr p5, p1

    mul-float p2, p2, p5

    sub-float/2addr p3, p1

    sub-float/2addr p4, p0

    mul-float p3, p3, p4

    sub-float/2addr p2, p3

    .line 106
    invoke-static {p2}, Ljava/lang/Math;->signum(F)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method public static pointLineSide(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)I
    .locals 3

    .line 99
    iget v0, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v1, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float/2addr v0, v1

    iget v1, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v2, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr v1, v2

    mul-float v0, v0, v1

    iget p1, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v1, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr p1, v1

    iget p2, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget p0, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float/2addr p2, p0

    mul-float p1, p1, p2

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method private static splitEdge([FIIILcom/badlogic/gdx/math/Plane;[FI)V
    .locals 8

    .line 1382
    aget v0, p0, p1

    add-int/lit8 v1, p1, 0x1

    aget v1, p0, v1

    add-int/lit8 v2, p1, 0x2

    aget v2, p0, v2

    aget v3, p0, p2

    add-int/lit8 v4, p2, 0x1

    aget v4, p0, v4

    add-int/lit8 v5, p2, 0x2

    aget v5, p0, v5

    sget-object v7, Lcom/badlogic/gdx/math/Intersector;->intersection:Lcom/badlogic/gdx/math/Vector3;

    move-object v6, p4

    invoke-static/range {v0 .. v7}, Lcom/badlogic/gdx/math/Intersector;->intersectLinePlane(FFFFFFLcom/badlogic/gdx/math/Plane;Lcom/badlogic/gdx/math/Vector3;)F

    move-result p4

    add-int/lit8 v0, p6, 0x0

    .line 1384
    sget-object v1, Lcom/badlogic/gdx/math/Intersector;->intersection:Lcom/badlogic/gdx/math/Vector3;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector3;->x:F

    aput v1, p5, v0

    add-int/lit8 v0, p6, 0x1

    .line 1385
    sget-object v1, Lcom/badlogic/gdx/math/Intersector;->intersection:Lcom/badlogic/gdx/math/Vector3;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector3;->y:F

    aput v1, p5, v0

    add-int/lit8 v0, p6, 0x2

    .line 1386
    sget-object v1, Lcom/badlogic/gdx/math/Intersector;->intersection:Lcom/badlogic/gdx/math/Vector3;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector3;->z:F

    aput v1, p5, v0

    const/4 v0, 0x3

    :goto_0
    if-ge v0, p3, :cond_0

    add-int v1, p1, v0

    .line 1388
    aget v1, p0, v1

    add-int v2, p2, v0

    .line 1389
    aget v2, p0, v2

    add-int v3, p6, v0

    sub-float/2addr v2, v1

    mul-float v2, v2, p4

    add-float/2addr v1, v2

    .line 1390
    aput v1, p5, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static splitTriangle([FLcom/badlogic/gdx/math/Plane;Lcom/badlogic/gdx/math/Intersector$SplitTriangle;)V
    .locals 19

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    .line 1281
    array-length v0, v7

    const/4 v1, 0x3

    div-int/lit8 v10, v0, 0x3

    const/4 v11, 0x0

    .line 1282
    aget v0, v7, v11

    const/4 v12, 0x1

    aget v2, v7, v12

    const/4 v13, 0x2

    aget v3, v7, v13

    invoke-virtual {v8, v0, v2, v3}, Lcom/badlogic/gdx/math/Plane;->testPoint(FFF)Lcom/badlogic/gdx/math/Plane$PlaneSide;

    move-result-object v0

    sget-object v2, Lcom/badlogic/gdx/math/Plane$PlaneSide;->Back:Lcom/badlogic/gdx/math/Plane$PlaneSide;

    if-ne v0, v2, :cond_0

    const/4 v14, 0x1

    goto :goto_0

    :cond_0
    const/4 v14, 0x0

    :goto_0
    add-int/lit8 v0, v10, 0x0

    .line 1283
    aget v0, v7, v0

    add-int/lit8 v2, v10, 0x1

    aget v2, v7, v2

    add-int/lit8 v3, v10, 0x2

    aget v3, v7, v3

    invoke-virtual {v8, v0, v2, v3}, Lcom/badlogic/gdx/math/Plane;->testPoint(FFF)Lcom/badlogic/gdx/math/Plane$PlaneSide;

    move-result-object v0

    sget-object v2, Lcom/badlogic/gdx/math/Plane$PlaneSide;->Back:Lcom/badlogic/gdx/math/Plane$PlaneSide;

    if-ne v0, v2, :cond_1

    const/4 v15, 0x1

    goto :goto_1

    :cond_1
    const/4 v15, 0x0

    :goto_1
    mul-int/lit8 v6, v10, 0x2

    add-int/lit8 v0, v6, 0x0

    .line 1284
    aget v0, v7, v0

    add-int/lit8 v2, v6, 0x1

    aget v2, v7, v2

    add-int/lit8 v3, v6, 0x2

    aget v3, v7, v3

    invoke-virtual {v8, v0, v2, v3}, Lcom/badlogic/gdx/math/Plane;->testPoint(FFF)Lcom/badlogic/gdx/math/Plane$PlaneSide;

    move-result-object v0

    sget-object v2, Lcom/badlogic/gdx/math/Plane$PlaneSide;->Back:Lcom/badlogic/gdx/math/Plane$PlaneSide;

    if-ne v0, v2, :cond_2

    const/4 v5, 0x1

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    .line 1287
    :goto_2
    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->reset()V

    if-ne v14, v15, :cond_4

    if-ne v15, v5, :cond_4

    .line 1291
    iput v12, v9, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->total:I

    if-eqz v14, :cond_3

    .line 1293
    iput v12, v9, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->numBack:I

    .line 1294
    iget-object v0, v9, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->back:[F

    array-length v1, v7

    invoke-static {v7, v11, v0, v11, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_3

    .line 1296
    :cond_3
    iput v12, v9, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->numFront:I

    .line 1297
    iget-object v0, v9, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->front:[F

    array-length v1, v7

    invoke-static {v7, v11, v0, v11, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_3
    return-void

    .line 1303
    :cond_4
    iput v1, v9, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->total:I

    xor-int/lit8 v0, v14, 0x1

    xor-int/lit8 v1, v15, 0x1

    add-int/2addr v0, v1

    xor-int/lit8 v1, v5, 0x1

    add-int/2addr v0, v1

    .line 1304
    iput v0, v9, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->numFront:I

    .line 1305
    iget v0, v9, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->total:I

    iget v1, v9, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->numFront:I

    sub-int/2addr v0, v1

    iput v0, v9, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->numBack:I

    xor-int/lit8 v0, v14, 0x1

    .line 1310
    invoke-virtual {v9, v0}, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->setSide(Z)V

    if-eq v14, v15, :cond_5

    .line 1317
    iget-object v4, v9, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->edgeSplit:[F

    const/16 v16, 0x0

    const/4 v1, 0x0

    move-object/from16 v0, p0

    move v2, v10

    move v3, v10

    move-object/from16 v17, v4

    move-object/from16 v4, p1

    move v13, v5

    move-object/from16 v5, v17

    move/from16 v18, v6

    move/from16 v6, v16

    invoke-static/range {v0 .. v6}, Lcom/badlogic/gdx/math/Intersector;->splitEdge([FIIILcom/badlogic/gdx/math/Plane;[FI)V

    .line 1320
    invoke-virtual {v9, v7, v11, v10}, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->add([FII)V

    .line 1321
    iget-object v0, v9, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->edgeSplit:[F

    invoke-virtual {v9, v0, v11, v10}, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->add([FII)V

    .line 1324
    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->getSide()Z

    move-result v0

    xor-int/2addr v0, v12

    invoke-virtual {v9, v0}, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->setSide(Z)V

    .line 1325
    iget-object v0, v9, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->edgeSplit:[F

    invoke-virtual {v9, v0, v11, v10}, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->add([FII)V

    goto :goto_4

    :cond_5
    move v13, v5

    move/from16 v18, v6

    .line 1328
    invoke-virtual {v9, v7, v11, v10}, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->add([FII)V

    :goto_4
    add-int v6, v10, v10

    if-eq v15, v13, :cond_6

    .line 1336
    iget-object v5, v9, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->edgeSplit:[F

    const/4 v15, 0x0

    move-object/from16 v0, p0

    move v1, v10

    move v2, v6

    move v3, v10

    move-object/from16 v4, p1

    move/from16 v16, v6

    move v6, v15

    invoke-static/range {v0 .. v6}, Lcom/badlogic/gdx/math/Intersector;->splitEdge([FIIILcom/badlogic/gdx/math/Plane;[FI)V

    .line 1339
    invoke-virtual {v9, v7, v10, v10}, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->add([FII)V

    .line 1340
    iget-object v0, v9, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->edgeSplit:[F

    invoke-virtual {v9, v0, v11, v10}, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->add([FII)V

    .line 1343
    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->getSide()Z

    move-result v0

    xor-int/2addr v0, v12

    invoke-virtual {v9, v0}, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->setSide(Z)V

    .line 1344
    iget-object v0, v9, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->edgeSplit:[F

    invoke-virtual {v9, v0, v11, v10}, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->add([FII)V

    goto :goto_5

    :cond_6
    move/from16 v16, v6

    .line 1347
    invoke-virtual {v9, v7, v10, v10}, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->add([FII)V

    :goto_5
    const/4 v2, 0x0

    if-eq v13, v14, :cond_7

    .line 1355
    iget-object v5, v9, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->edgeSplit:[F

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    move v3, v10

    move-object/from16 v4, p1

    invoke-static/range {v0 .. v6}, Lcom/badlogic/gdx/math/Intersector;->splitEdge([FIIILcom/badlogic/gdx/math/Plane;[FI)V

    move/from16 v0, v16

    .line 1358
    invoke-virtual {v9, v7, v0, v10}, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->add([FII)V

    .line 1359
    iget-object v0, v9, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->edgeSplit:[F

    invoke-virtual {v9, v0, v11, v10}, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->add([FII)V

    .line 1362
    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->getSide()Z

    move-result v0

    xor-int/2addr v0, v12

    invoke-virtual {v9, v0}, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->setSide(Z)V

    .line 1363
    iget-object v0, v9, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->edgeSplit:[F

    invoke-virtual {v9, v0, v11, v10}, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->add([FII)V

    goto :goto_6

    :cond_7
    move/from16 v0, v16

    .line 1366
    invoke-virtual {v9, v7, v0, v10}, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->add([FII)V

    .line 1370
    :goto_6
    iget v0, v9, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->numFront:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_8

    .line 1371
    iget-object v0, v9, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->front:[F

    iget-object v1, v9, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->front:[F

    mul-int/lit8 v2, v10, 0x3

    move/from16 v3, v18

    invoke-static {v0, v3, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1372
    iget-object v0, v9, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->front:[F

    iget-object v1, v9, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->front:[F

    mul-int/lit8 v2, v10, 0x5

    invoke-static {v0, v11, v1, v2, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_7

    :cond_8
    move/from16 v3, v18

    .line 1374
    iget-object v0, v9, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->back:[F

    iget-object v1, v9, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->back:[F

    mul-int/lit8 v2, v10, 0x3

    invoke-static {v0, v3, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1375
    iget-object v0, v9, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->back:[F

    iget-object v1, v9, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->back:[F

    mul-int/lit8 v2, v10, 0x5

    invoke-static {v0, v11, v1, v2, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_7
    return-void
.end method
