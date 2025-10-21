.class public Lcom/badlogic/gdx/math/Matrix4;
.super Ljava/lang/Object;
.source "Matrix4.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final M00:I = 0x0

.field public static final M01:I = 0x4

.field public static final M02:I = 0x8

.field public static final M03:I = 0xc

.field public static final M10:I = 0x1

.field public static final M11:I = 0x5

.field public static final M12:I = 0x9

.field public static final M13:I = 0xd

.field public static final M20:I = 0x2

.field public static final M21:I = 0x6

.field public static final M22:I = 0xa

.field public static final M23:I = 0xe

.field public static final M30:I = 0x3

.field public static final M31:I = 0x7

.field public static final M32:I = 0xb

.field public static final M33:I = 0xf

.field static final l_vex:Lcom/badlogic/gdx/math/Vector3;

.field static final l_vey:Lcom/badlogic/gdx/math/Vector3;

.field static final l_vez:Lcom/badlogic/gdx/math/Vector3;

.field static final quat:Lcom/badlogic/gdx/math/Quaternion;

.field static final quat2:Lcom/badlogic/gdx/math/Quaternion;

.field static final right:Lcom/badlogic/gdx/math/Vector3;

.field private static final serialVersionUID:J = -0x25b70d0e1a139be1L

.field static final tmpForward:Lcom/badlogic/gdx/math/Vector3;

.field static final tmpMat:Lcom/badlogic/gdx/math/Matrix4;

.field static final tmpUp:Lcom/badlogic/gdx/math/Vector3;

.field static final tmpVec:Lcom/badlogic/gdx/math/Vector3;


# instance fields
.field public final val:[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 73
    new-instance v0, Lcom/badlogic/gdx/math/Quaternion;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Quaternion;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Matrix4;->quat:Lcom/badlogic/gdx/math/Quaternion;

    .line 74
    new-instance v0, Lcom/badlogic/gdx/math/Quaternion;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Quaternion;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Matrix4;->quat2:Lcom/badlogic/gdx/math/Quaternion;

    .line 75
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Matrix4;->l_vez:Lcom/badlogic/gdx/math/Vector3;

    .line 76
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Matrix4;->l_vex:Lcom/badlogic/gdx/math/Vector3;

    .line 77
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Matrix4;->l_vey:Lcom/badlogic/gdx/math/Vector3;

    .line 78
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Matrix4;->tmpVec:Lcom/badlogic/gdx/math/Vector3;

    .line 79
    new-instance v0, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Matrix4;->tmpMat:Lcom/badlogic/gdx/math/Matrix4;

    .line 80
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Matrix4;->right:Lcom/badlogic/gdx/math/Vector3;

    .line 81
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Matrix4;->tmpForward:Lcom/badlogic/gdx/math/Vector3;

    .line 82
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Matrix4;->tmpUp:Lcom/badlogic/gdx/math/Vector3;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [F

    .line 84
    iput-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v0, v1

    const/4 v1, 0x5

    aput v2, v0, v1

    const/16 v1, 0xa

    aput v2, v0, v1

    const/16 v1, 0xf

    aput v2, v0, v1

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/math/Matrix4;)V
    .locals 1

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [F

    .line 84
    iput-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    .line 97
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/math/Quaternion;)V
    .locals 1

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [F

    .line 84
    iput-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    .line 110
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Quaternion;)Lcom/badlogic/gdx/math/Matrix4;

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Quaternion;Lcom/badlogic/gdx/math/Vector3;)V
    .locals 1

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [F

    .line 84
    iput-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    .line 118
    invoke-virtual {p0, p1, p2, p3}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Quaternion;Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Matrix4;

    return-void
.end method

.method public constructor <init>([F)V
    .locals 1

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [F

    .line 84
    iput-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    .line 104
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Matrix4;->set([F)Lcom/badlogic/gdx/math/Matrix4;

    return-void
.end method

.method public static det([F)F
    .locals 16

    const/4 v0, 0x3

    .line 1410
    aget v1, p0, v0

    const/4 v2, 0x6

    aget v3, p0, v2

    mul-float v1, v1, v3

    const/16 v3, 0x9

    aget v4, p0, v3

    mul-float v1, v1, v4

    const/16 v4, 0xc

    aget v5, p0, v4

    mul-float v1, v1, v5

    const/4 v5, 0x2

    aget v6, p0, v5

    const/4 v7, 0x7

    aget v8, p0, v7

    mul-float v6, v6, v8

    aget v8, p0, v3

    mul-float v6, v6, v8

    aget v8, p0, v4

    mul-float v6, v6, v8

    sub-float/2addr v1, v6

    aget v6, p0, v0

    const/4 v8, 0x5

    aget v9, p0, v8

    mul-float v6, v6, v9

    const/16 v9, 0xa

    aget v10, p0, v9

    mul-float v6, v6, v10

    aget v10, p0, v4

    mul-float v6, v6, v10

    sub-float/2addr v1, v6

    const/4 v6, 0x1

    aget v10, p0, v6

    aget v11, p0, v7

    mul-float v10, v10, v11

    aget v11, p0, v9

    mul-float v10, v10, v11

    aget v11, p0, v4

    mul-float v10, v10, v11

    add-float/2addr v1, v10

    aget v10, p0, v5

    aget v11, p0, v8

    mul-float v10, v10, v11

    const/16 v11, 0xb

    aget v12, p0, v11

    mul-float v10, v10, v12

    aget v12, p0, v4

    mul-float v10, v10, v12

    add-float/2addr v1, v10

    aget v10, p0, v6

    aget v12, p0, v2

    mul-float v10, v10, v12

    aget v12, p0, v11

    mul-float v10, v10, v12

    aget v4, p0, v4

    mul-float v10, v10, v4

    sub-float/2addr v1, v10

    aget v4, p0, v0

    aget v10, p0, v2

    mul-float v4, v4, v10

    const/16 v10, 0x8

    aget v12, p0, v10

    mul-float v4, v4, v12

    const/16 v12, 0xd

    aget v13, p0, v12

    mul-float v4, v4, v13

    sub-float/2addr v1, v4

    aget v4, p0, v5

    aget v13, p0, v7

    mul-float v4, v4, v13

    aget v13, p0, v10

    mul-float v4, v4, v13

    aget v13, p0, v12

    mul-float v4, v4, v13

    add-float/2addr v1, v4

    aget v4, p0, v0

    const/4 v13, 0x4

    aget v14, p0, v13

    mul-float v4, v4, v14

    aget v14, p0, v9

    mul-float v4, v4, v14

    aget v14, p0, v12

    mul-float v4, v4, v14

    add-float/2addr v1, v4

    const/4 v4, 0x0

    aget v14, p0, v4

    aget v15, p0, v7

    mul-float v14, v14, v15

    aget v15, p0, v9

    mul-float v14, v14, v15

    aget v15, p0, v12

    mul-float v14, v14, v15

    sub-float/2addr v1, v14

    aget v14, p0, v5

    aget v15, p0, v13

    mul-float v14, v14, v15

    aget v15, p0, v11

    mul-float v14, v14, v15

    aget v15, p0, v12

    mul-float v14, v14, v15

    sub-float/2addr v1, v14

    aget v14, p0, v4

    aget v15, p0, v2

    mul-float v14, v14, v15

    aget v15, p0, v11

    mul-float v14, v14, v15

    aget v12, p0, v12

    mul-float v14, v14, v12

    add-float/2addr v1, v14

    aget v12, p0, v0

    aget v14, p0, v8

    mul-float v12, v12, v14

    aget v14, p0, v10

    mul-float v12, v12, v14

    const/16 v14, 0xe

    aget v15, p0, v14

    mul-float v12, v12, v15

    add-float/2addr v1, v12

    aget v12, p0, v6

    aget v15, p0, v7

    mul-float v12, v12, v15

    aget v15, p0, v10

    mul-float v12, v12, v15

    aget v15, p0, v14

    mul-float v12, v12, v15

    sub-float/2addr v1, v12

    aget v0, p0, v0

    aget v12, p0, v13

    mul-float v0, v0, v12

    aget v12, p0, v3

    mul-float v0, v0, v12

    aget v12, p0, v14

    mul-float v0, v0, v12

    sub-float/2addr v1, v0

    aget v0, p0, v4

    aget v7, p0, v7

    mul-float v0, v0, v7

    aget v7, p0, v3

    mul-float v0, v0, v7

    aget v7, p0, v14

    mul-float v0, v0, v7

    add-float/2addr v1, v0

    aget v0, p0, v6

    aget v7, p0, v13

    mul-float v0, v0, v7

    aget v7, p0, v11

    mul-float v0, v0, v7

    aget v7, p0, v14

    mul-float v0, v0, v7

    add-float/2addr v1, v0

    aget v0, p0, v4

    aget v7, p0, v8

    mul-float v0, v0, v7

    aget v7, p0, v11

    mul-float v0, v0, v7

    aget v7, p0, v14

    mul-float v0, v0, v7

    sub-float/2addr v1, v0

    aget v0, p0, v5

    aget v7, p0, v8

    mul-float v0, v0, v7

    aget v7, p0, v10

    mul-float v0, v0, v7

    const/16 v7, 0xf

    aget v11, p0, v7

    mul-float v0, v0, v11

    sub-float/2addr v1, v0

    aget v0, p0, v6

    aget v11, p0, v2

    mul-float v0, v0, v11

    aget v10, p0, v10

    mul-float v0, v0, v10

    aget v10, p0, v7

    mul-float v0, v0, v10

    add-float/2addr v1, v0

    aget v0, p0, v5

    aget v5, p0, v13

    mul-float v0, v0, v5

    aget v5, p0, v3

    mul-float v0, v0, v5

    aget v5, p0, v7

    mul-float v0, v0, v5

    add-float/2addr v1, v0

    aget v0, p0, v4

    aget v2, p0, v2

    mul-float v0, v0, v2

    aget v2, p0, v3

    mul-float v0, v0, v2

    aget v2, p0, v7

    mul-float v0, v0, v2

    sub-float/2addr v1, v0

    aget v0, p0, v6

    aget v2, p0, v13

    mul-float v0, v0, v2

    aget v2, p0, v9

    mul-float v0, v0, v2

    aget v2, p0, v7

    mul-float v0, v0, v2

    sub-float/2addr v1, v0

    aget v0, p0, v4

    aget v2, p0, v8

    mul-float v0, v0, v2

    aget v2, p0, v9

    mul-float v0, v0, v2

    aget v2, p0, v7

    mul-float v0, v0, v2

    add-float/2addr v1, v0

    return v1
.end method

.method public static inv([F)Z
    .locals 35

    .line 1335
    invoke-static/range {p0 .. p0}, Lcom/badlogic/gdx/math/Matrix4;->det([F)F

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    cmpl-float v2, v0, v2

    if-nez v2, :cond_0

    return v1

    :cond_0
    const/16 v2, 0x9

    .line 1337
    aget v3, p0, v2

    const/16 v4, 0xe

    aget v5, p0, v4

    mul-float v3, v3, v5

    const/4 v5, 0x7

    aget v6, p0, v5

    mul-float v3, v3, v6

    const/16 v6, 0xd

    aget v7, p0, v6

    const/16 v8, 0xa

    aget v9, p0, v8

    mul-float v7, v7, v9

    aget v9, p0, v5

    mul-float v7, v7, v9

    sub-float/2addr v3, v7

    aget v7, p0, v6

    const/4 v9, 0x6

    aget v10, p0, v9

    mul-float v7, v7, v10

    const/16 v10, 0xb

    aget v11, p0, v10

    mul-float v7, v7, v11

    add-float/2addr v3, v7

    const/4 v7, 0x5

    aget v11, p0, v7

    aget v12, p0, v4

    mul-float v11, v11, v12

    aget v12, p0, v10

    mul-float v11, v11, v12

    sub-float/2addr v3, v11

    aget v11, p0, v2

    aget v12, p0, v9

    mul-float v11, v11, v12

    const/16 v12, 0xf

    aget v13, p0, v12

    mul-float v11, v11, v13

    sub-float/2addr v3, v11

    aget v11, p0, v7

    aget v13, p0, v8

    mul-float v11, v11, v13

    aget v13, p0, v12

    mul-float v11, v11, v13

    add-float/2addr v3, v11

    const/16 v11, 0xc

    .line 1340
    aget v13, p0, v11

    aget v14, p0, v8

    mul-float v13, v13, v14

    aget v14, p0, v5

    mul-float v13, v13, v14

    const/16 v14, 0x8

    aget v15, p0, v14

    aget v16, p0, v4

    mul-float v15, v15, v16

    aget v16, p0, v5

    mul-float v15, v15, v16

    sub-float/2addr v13, v15

    aget v15, p0, v11

    aget v16, p0, v9

    mul-float v15, v15, v16

    aget v16, p0, v10

    mul-float v15, v15, v16

    sub-float/2addr v13, v15

    const/4 v15, 0x4

    aget v16, p0, v15

    aget v17, p0, v4

    mul-float v16, v16, v17

    aget v17, p0, v10

    mul-float v16, v16, v17

    add-float v13, v13, v16

    aget v16, p0, v14

    aget v17, p0, v9

    mul-float v16, v16, v17

    aget v17, p0, v12

    mul-float v16, v16, v17

    add-float v13, v13, v16

    aget v16, p0, v15

    aget v17, p0, v8

    mul-float v16, v16, v17

    aget v17, p0, v12

    mul-float v16, v16, v17

    sub-float v13, v13, v16

    .line 1343
    aget v16, p0, v14

    aget v17, p0, v6

    mul-float v16, v16, v17

    aget v17, p0, v5

    mul-float v16, v16, v17

    aget v17, p0, v11

    aget v18, p0, v2

    mul-float v17, v17, v18

    aget v18, p0, v5

    mul-float v17, v17, v18

    sub-float v16, v16, v17

    aget v17, p0, v11

    aget v18, p0, v7

    mul-float v17, v17, v18

    aget v18, p0, v10

    mul-float v17, v17, v18

    add-float v16, v16, v17

    aget v17, p0, v15

    aget v18, p0, v6

    mul-float v17, v17, v18

    aget v18, p0, v10

    mul-float v17, v17, v18

    sub-float v16, v16, v17

    aget v17, p0, v14

    aget v18, p0, v7

    mul-float v17, v17, v18

    aget v18, p0, v12

    mul-float v17, v17, v18

    sub-float v16, v16, v17

    aget v17, p0, v15

    aget v18, p0, v2

    mul-float v17, v17, v18

    aget v18, p0, v12

    mul-float v17, v17, v18

    add-float v16, v16, v17

    .line 1346
    aget v17, p0, v11

    aget v18, p0, v2

    mul-float v17, v17, v18

    aget v18, p0, v9

    mul-float v17, v17, v18

    aget v18, p0, v14

    aget v19, p0, v6

    mul-float v18, v18, v19

    aget v19, p0, v9

    mul-float v18, v18, v19

    sub-float v17, v17, v18

    aget v18, p0, v11

    aget v19, p0, v7

    mul-float v18, v18, v19

    aget v19, p0, v8

    mul-float v18, v18, v19

    sub-float v17, v17, v18

    aget v18, p0, v15

    aget v19, p0, v6

    mul-float v18, v18, v19

    aget v19, p0, v8

    mul-float v18, v18, v19

    add-float v17, v17, v18

    aget v18, p0, v14

    aget v19, p0, v7

    mul-float v18, v18, v19

    aget v19, p0, v4

    mul-float v18, v18, v19

    add-float v17, v17, v18

    aget v18, p0, v15

    aget v19, p0, v2

    mul-float v18, v18, v19

    aget v19, p0, v4

    mul-float v18, v18, v19

    sub-float v17, v17, v18

    .line 1349
    aget v18, p0, v6

    aget v19, p0, v8

    mul-float v18, v18, v19

    const/16 v19, 0x3

    aget v20, p0, v19

    mul-float v18, v18, v20

    aget v20, p0, v2

    aget v21, p0, v4

    mul-float v20, v20, v21

    aget v21, p0, v19

    mul-float v20, v20, v21

    sub-float v18, v18, v20

    aget v20, p0, v6

    const/16 v21, 0x2

    aget v22, p0, v21

    mul-float v20, v20, v22

    aget v22, p0, v10

    mul-float v20, v20, v22

    sub-float v18, v18, v20

    const/16 v20, 0x1

    aget v22, p0, v20

    aget v23, p0, v4

    mul-float v22, v22, v23

    aget v23, p0, v10

    mul-float v22, v22, v23

    add-float v18, v18, v22

    aget v22, p0, v2

    aget v23, p0, v21

    mul-float v22, v22, v23

    aget v23, p0, v12

    mul-float v22, v22, v23

    add-float v18, v18, v22

    aget v22, p0, v20

    aget v23, p0, v8

    mul-float v22, v22, v23

    aget v23, p0, v12

    mul-float v22, v22, v23

    sub-float v18, v18, v22

    .line 1352
    aget v22, p0, v14

    aget v23, p0, v4

    mul-float v22, v22, v23

    aget v23, p0, v19

    mul-float v22, v22, v23

    aget v23, p0, v11

    aget v24, p0, v8

    mul-float v23, v23, v24

    aget v24, p0, v19

    mul-float v23, v23, v24

    sub-float v22, v22, v23

    aget v23, p0, v11

    aget v24, p0, v21

    mul-float v23, v23, v24

    aget v24, p0, v10

    mul-float v23, v23, v24

    add-float v22, v22, v23

    aget v23, p0, v1

    aget v24, p0, v4

    mul-float v23, v23, v24

    aget v24, p0, v10

    mul-float v23, v23, v24

    sub-float v22, v22, v23

    aget v23, p0, v14

    aget v24, p0, v21

    mul-float v23, v23, v24

    aget v24, p0, v12

    mul-float v23, v23, v24

    sub-float v22, v22, v23

    aget v23, p0, v1

    aget v24, p0, v8

    mul-float v23, v23, v24

    aget v24, p0, v12

    mul-float v23, v23, v24

    add-float v22, v22, v23

    .line 1355
    aget v23, p0, v11

    aget v24, p0, v2

    mul-float v23, v23, v24

    aget v24, p0, v19

    mul-float v23, v23, v24

    aget v24, p0, v14

    aget v25, p0, v6

    mul-float v24, v24, v25

    aget v25, p0, v19

    mul-float v24, v24, v25

    sub-float v23, v23, v24

    aget v24, p0, v11

    aget v25, p0, v20

    mul-float v24, v24, v25

    aget v25, p0, v10

    mul-float v24, v24, v25

    sub-float v23, v23, v24

    aget v24, p0, v1

    aget v25, p0, v6

    mul-float v24, v24, v25

    aget v25, p0, v10

    mul-float v24, v24, v25

    add-float v23, v23, v24

    aget v24, p0, v14

    aget v25, p0, v20

    mul-float v24, v24, v25

    aget v25, p0, v12

    mul-float v24, v24, v25

    add-float v23, v23, v24

    aget v24, p0, v1

    aget v25, p0, v2

    mul-float v24, v24, v25

    aget v25, p0, v12

    mul-float v24, v24, v25

    sub-float v23, v23, v24

    .line 1358
    aget v24, p0, v14

    aget v25, p0, v6

    mul-float v24, v24, v25

    aget v25, p0, v21

    mul-float v24, v24, v25

    aget v25, p0, v11

    aget v26, p0, v2

    mul-float v25, v25, v26

    aget v26, p0, v21

    mul-float v25, v25, v26

    sub-float v24, v24, v25

    aget v25, p0, v11

    aget v26, p0, v20

    mul-float v25, v25, v26

    aget v26, p0, v8

    mul-float v25, v25, v26

    add-float v24, v24, v25

    aget v25, p0, v1

    aget v26, p0, v6

    mul-float v25, v25, v26

    aget v26, p0, v8

    mul-float v25, v25, v26

    sub-float v24, v24, v25

    aget v25, p0, v14

    aget v26, p0, v20

    mul-float v25, v25, v26

    aget v26, p0, v4

    mul-float v25, v25, v26

    sub-float v24, v24, v25

    aget v25, p0, v1

    aget v26, p0, v2

    mul-float v25, v25, v26

    aget v26, p0, v4

    mul-float v25, v25, v26

    add-float v24, v24, v25

    .line 1361
    aget v25, p0, v7

    aget v26, p0, v4

    mul-float v25, v25, v26

    aget v26, p0, v19

    mul-float v25, v25, v26

    aget v26, p0, v6

    aget v27, p0, v9

    mul-float v26, v26, v27

    aget v27, p0, v19

    mul-float v26, v26, v27

    sub-float v25, v25, v26

    aget v26, p0, v6

    aget v27, p0, v21

    mul-float v26, v26, v27

    aget v27, p0, v5

    mul-float v26, v26, v27

    add-float v25, v25, v26

    aget v26, p0, v20

    aget v27, p0, v4

    mul-float v26, v26, v27

    aget v27, p0, v5

    mul-float v26, v26, v27

    sub-float v25, v25, v26

    aget v26, p0, v7

    aget v27, p0, v21

    mul-float v26, v26, v27

    aget v27, p0, v12

    mul-float v26, v26, v27

    sub-float v25, v25, v26

    aget v26, p0, v20

    aget v27, p0, v9

    mul-float v26, v26, v27

    aget v27, p0, v12

    mul-float v26, v26, v27

    add-float v25, v25, v26

    .line 1364
    aget v26, p0, v11

    aget v27, p0, v9

    mul-float v26, v26, v27

    aget v27, p0, v19

    mul-float v26, v26, v27

    aget v27, p0, v15

    aget v28, p0, v4

    mul-float v27, v27, v28

    aget v28, p0, v19

    mul-float v27, v27, v28

    sub-float v26, v26, v27

    aget v27, p0, v11

    aget v28, p0, v21

    mul-float v27, v27, v28

    aget v28, p0, v5

    mul-float v27, v27, v28

    sub-float v26, v26, v27

    aget v27, p0, v1

    aget v28, p0, v4

    mul-float v27, v27, v28

    aget v28, p0, v5

    mul-float v27, v27, v28

    add-float v26, v26, v27

    aget v27, p0, v15

    aget v28, p0, v21

    mul-float v27, v27, v28

    aget v28, p0, v12

    mul-float v27, v27, v28

    add-float v26, v26, v27

    aget v27, p0, v1

    aget v28, p0, v9

    mul-float v27, v27, v28

    aget v28, p0, v12

    mul-float v27, v27, v28

    sub-float v26, v26, v27

    .line 1367
    aget v27, p0, v15

    aget v28, p0, v6

    mul-float v27, v27, v28

    aget v28, p0, v19

    mul-float v27, v27, v28

    aget v28, p0, v11

    aget v29, p0, v7

    mul-float v28, v28, v29

    aget v29, p0, v19

    mul-float v28, v28, v29

    sub-float v27, v27, v28

    aget v28, p0, v11

    aget v29, p0, v20

    mul-float v28, v28, v29

    aget v29, p0, v5

    mul-float v28, v28, v29

    add-float v27, v27, v28

    aget v28, p0, v1

    aget v29, p0, v6

    mul-float v28, v28, v29

    aget v29, p0, v5

    mul-float v28, v28, v29

    sub-float v27, v27, v28

    aget v28, p0, v15

    aget v29, p0, v20

    mul-float v28, v28, v29

    aget v29, p0, v12

    mul-float v28, v28, v29

    sub-float v27, v27, v28

    aget v28, p0, v1

    aget v29, p0, v7

    mul-float v28, v28, v29

    aget v29, p0, v12

    mul-float v28, v28, v29

    add-float v27, v27, v28

    .line 1370
    aget v28, p0, v11

    aget v29, p0, v7

    mul-float v28, v28, v29

    aget v29, p0, v21

    mul-float v28, v28, v29

    aget v29, p0, v15

    aget v30, p0, v6

    mul-float v29, v29, v30

    aget v30, p0, v21

    mul-float v29, v29, v30

    sub-float v28, v28, v29

    aget v29, p0, v11

    aget v30, p0, v20

    mul-float v29, v29, v30

    aget v30, p0, v9

    mul-float v29, v29, v30

    sub-float v28, v28, v29

    aget v29, p0, v1

    aget v30, p0, v6

    mul-float v29, v29, v30

    aget v30, p0, v9

    mul-float v29, v29, v30

    add-float v28, v28, v29

    aget v29, p0, v15

    aget v30, p0, v20

    mul-float v29, v29, v30

    aget v30, p0, v4

    mul-float v29, v29, v30

    add-float v28, v28, v29

    aget v29, p0, v1

    aget v30, p0, v7

    mul-float v29, v29, v30

    aget v30, p0, v4

    mul-float v29, v29, v30

    sub-float v28, v28, v29

    .line 1373
    aget v29, p0, v2

    aget v30, p0, v9

    mul-float v29, v29, v30

    aget v30, p0, v19

    mul-float v29, v29, v30

    aget v30, p0, v7

    aget v31, p0, v8

    mul-float v30, v30, v31

    aget v31, p0, v19

    mul-float v30, v30, v31

    sub-float v29, v29, v30

    aget v30, p0, v2

    aget v31, p0, v21

    mul-float v30, v30, v31

    aget v31, p0, v5

    mul-float v30, v30, v31

    sub-float v29, v29, v30

    aget v30, p0, v20

    aget v31, p0, v8

    mul-float v30, v30, v31

    aget v31, p0, v5

    mul-float v30, v30, v31

    add-float v29, v29, v30

    aget v30, p0, v7

    aget v31, p0, v21

    mul-float v30, v30, v31

    aget v31, p0, v10

    mul-float v30, v30, v31

    add-float v29, v29, v30

    aget v30, p0, v20

    aget v31, p0, v9

    mul-float v30, v30, v31

    aget v31, p0, v10

    mul-float v30, v30, v31

    sub-float v29, v29, v30

    .line 1376
    aget v30, p0, v15

    aget v31, p0, v8

    mul-float v30, v30, v31

    aget v31, p0, v19

    mul-float v30, v30, v31

    aget v31, p0, v14

    aget v32, p0, v9

    mul-float v31, v31, v32

    aget v32, p0, v19

    mul-float v31, v31, v32

    sub-float v30, v30, v31

    aget v31, p0, v14

    aget v32, p0, v21

    mul-float v31, v31, v32

    aget v32, p0, v5

    mul-float v31, v31, v32

    add-float v30, v30, v31

    aget v31, p0, v1

    aget v32, p0, v8

    mul-float v31, v31, v32

    aget v32, p0, v5

    mul-float v31, v31, v32

    sub-float v30, v30, v31

    aget v31, p0, v15

    aget v32, p0, v21

    mul-float v31, v31, v32

    aget v32, p0, v10

    mul-float v31, v31, v32

    sub-float v30, v30, v31

    aget v31, p0, v1

    aget v32, p0, v9

    mul-float v31, v31, v32

    aget v32, p0, v10

    mul-float v31, v31, v32

    add-float v30, v30, v31

    .line 1379
    aget v31, p0, v14

    aget v32, p0, v7

    mul-float v31, v31, v32

    aget v32, p0, v19

    mul-float v31, v31, v32

    aget v32, p0, v15

    aget v33, p0, v2

    mul-float v32, v32, v33

    aget v33, p0, v19

    mul-float v32, v32, v33

    sub-float v31, v31, v32

    aget v32, p0, v14

    aget v33, p0, v20

    mul-float v32, v32, v33

    aget v33, p0, v5

    mul-float v32, v32, v33

    sub-float v31, v31, v32

    aget v32, p0, v1

    aget v33, p0, v2

    mul-float v32, v32, v33

    aget v33, p0, v5

    mul-float v32, v32, v33

    add-float v31, v31, v32

    aget v32, p0, v15

    aget v33, p0, v20

    mul-float v32, v32, v33

    aget v33, p0, v10

    mul-float v32, v32, v33

    add-float v31, v31, v32

    aget v32, p0, v1

    aget v33, p0, v7

    mul-float v32, v32, v33

    aget v33, p0, v10

    mul-float v32, v32, v33

    sub-float v31, v31, v32

    .line 1382
    aget v32, p0, v15

    aget v33, p0, v2

    mul-float v32, v32, v33

    aget v33, p0, v21

    mul-float v32, v32, v33

    aget v33, p0, v14

    aget v34, p0, v7

    mul-float v33, v33, v34

    aget v34, p0, v21

    mul-float v33, v33, v34

    sub-float v32, v32, v33

    aget v33, p0, v14

    aget v34, p0, v20

    mul-float v33, v33, v34

    aget v34, p0, v9

    mul-float v33, v33, v34

    add-float v32, v32, v33

    aget v33, p0, v1

    aget v34, p0, v2

    mul-float v33, v33, v34

    aget v34, p0, v9

    mul-float v33, v33, v34

    sub-float v32, v32, v33

    aget v33, p0, v15

    aget v34, p0, v20

    mul-float v33, v33, v34

    aget v34, p0, v8

    mul-float v33, v33, v34

    sub-float v32, v32, v33

    aget v33, p0, v1

    aget v34, p0, v7

    mul-float v33, v33, v34

    aget v34, p0, v8

    mul-float v33, v33, v34

    add-float v32, v32, v33

    const/high16 v33, 0x3f800000    # 1.0f

    div-float v33, v33, v0

    mul-float v3, v3, v33

    .line 1386
    aput v3, p0, v1

    mul-float v18, v18, v33

    .line 1387
    aput v18, p0, v20

    mul-float v25, v25, v33

    .line 1388
    aput v25, p0, v21

    mul-float v29, v29, v33

    .line 1389
    aput v29, p0, v19

    mul-float v13, v13, v33

    .line 1390
    aput v13, p0, v15

    mul-float v22, v22, v33

    .line 1391
    aput v22, p0, v7

    mul-float v26, v26, v33

    .line 1392
    aput v26, p0, v9

    mul-float v30, v30, v33

    .line 1393
    aput v30, p0, v5

    mul-float v16, v16, v33

    .line 1394
    aput v16, p0, v14

    mul-float v23, v23, v33

    .line 1395
    aput v23, p0, v2

    mul-float v27, v27, v33

    .line 1396
    aput v27, p0, v8

    mul-float v31, v31, v33

    .line 1397
    aput v31, p0, v10

    mul-float v17, v17, v33

    .line 1398
    aput v17, p0, v11

    mul-float v24, v24, v33

    .line 1399
    aput v24, p0, v6

    mul-float v28, v28, v33

    .line 1400
    aput v28, p0, v4

    mul-float v32, v32, v33

    .line 1401
    aput v32, p0, v12

    return v20
.end method

.method public static mul([F[F)V
    .locals 34

    const/4 v0, 0x0

    .line 1250
    aget v1, p0, v0

    aget v2, p1, v0

    mul-float v1, v1, v2

    const/4 v2, 0x4

    aget v3, p0, v2

    const/4 v4, 0x1

    aget v5, p1, v4

    mul-float v3, v3, v5

    add-float/2addr v1, v3

    const/16 v3, 0x8

    aget v5, p0, v3

    const/4 v6, 0x2

    aget v7, p1, v6

    mul-float v5, v5, v7

    add-float/2addr v1, v5

    const/16 v5, 0xc

    aget v7, p0, v5

    const/4 v8, 0x3

    aget v9, p1, v8

    mul-float v7, v7, v9

    add-float/2addr v1, v7

    .line 1251
    aget v7, p0, v0

    aget v9, p1, v2

    mul-float v7, v7, v9

    aget v9, p0, v2

    const/4 v10, 0x5

    aget v11, p1, v10

    mul-float v9, v9, v11

    add-float/2addr v7, v9

    aget v9, p0, v3

    const/4 v11, 0x6

    aget v12, p1, v11

    mul-float v9, v9, v12

    add-float/2addr v7, v9

    aget v9, p0, v5

    const/4 v12, 0x7

    aget v13, p1, v12

    mul-float v9, v9, v13

    add-float/2addr v7, v9

    .line 1252
    aget v9, p0, v0

    aget v13, p1, v3

    mul-float v9, v9, v13

    aget v13, p0, v2

    const/16 v14, 0x9

    aget v15, p1, v14

    mul-float v13, v13, v15

    add-float/2addr v9, v13

    aget v13, p0, v3

    const/16 v15, 0xa

    aget v16, p1, v15

    mul-float v13, v13, v16

    add-float/2addr v9, v13

    aget v13, p0, v5

    const/16 v16, 0xb

    aget v17, p1, v16

    mul-float v13, v13, v17

    add-float/2addr v9, v13

    .line 1253
    aget v13, p0, v0

    aget v17, p1, v5

    mul-float v13, v13, v17

    aget v17, p0, v2

    const/16 v18, 0xd

    aget v19, p1, v18

    mul-float v17, v17, v19

    add-float v13, v13, v17

    aget v17, p0, v3

    const/16 v19, 0xe

    aget v20, p1, v19

    mul-float v17, v17, v20

    add-float v13, v13, v17

    aget v17, p0, v5

    const/16 v20, 0xf

    aget v21, p1, v20

    mul-float v17, v17, v21

    add-float v13, v13, v17

    .line 1254
    aget v17, p0, v4

    aget v21, p1, v0

    mul-float v17, v17, v21

    aget v21, p0, v10

    aget v22, p1, v4

    mul-float v21, v21, v22

    add-float v17, v17, v21

    aget v21, p0, v14

    aget v22, p1, v6

    mul-float v21, v21, v22

    add-float v17, v17, v21

    aget v21, p0, v18

    aget v22, p1, v8

    mul-float v21, v21, v22

    add-float v17, v17, v21

    .line 1255
    aget v21, p0, v4

    aget v22, p1, v2

    mul-float v21, v21, v22

    aget v22, p0, v10

    aget v23, p1, v10

    mul-float v22, v22, v23

    add-float v21, v21, v22

    aget v22, p0, v14

    aget v23, p1, v11

    mul-float v22, v22, v23

    add-float v21, v21, v22

    aget v22, p0, v18

    aget v23, p1, v12

    mul-float v22, v22, v23

    add-float v21, v21, v22

    .line 1256
    aget v22, p0, v4

    aget v23, p1, v3

    mul-float v22, v22, v23

    aget v23, p0, v10

    aget v24, p1, v14

    mul-float v23, v23, v24

    add-float v22, v22, v23

    aget v23, p0, v14

    aget v24, p1, v15

    mul-float v23, v23, v24

    add-float v22, v22, v23

    aget v23, p0, v18

    aget v24, p1, v16

    mul-float v23, v23, v24

    add-float v22, v22, v23

    .line 1257
    aget v23, p0, v4

    aget v24, p1, v5

    mul-float v23, v23, v24

    aget v24, p0, v10

    aget v25, p1, v18

    mul-float v24, v24, v25

    add-float v23, v23, v24

    aget v24, p0, v14

    aget v25, p1, v19

    mul-float v24, v24, v25

    add-float v23, v23, v24

    aget v24, p0, v18

    aget v25, p1, v20

    mul-float v24, v24, v25

    add-float v23, v23, v24

    .line 1258
    aget v24, p0, v6

    aget v25, p1, v0

    mul-float v24, v24, v25

    aget v25, p0, v11

    aget v26, p1, v4

    mul-float v25, v25, v26

    add-float v24, v24, v25

    aget v25, p0, v15

    aget v26, p1, v6

    mul-float v25, v25, v26

    add-float v24, v24, v25

    aget v25, p0, v19

    aget v26, p1, v8

    mul-float v25, v25, v26

    add-float v24, v24, v25

    .line 1259
    aget v25, p0, v6

    aget v26, p1, v2

    mul-float v25, v25, v26

    aget v26, p0, v11

    aget v27, p1, v10

    mul-float v26, v26, v27

    add-float v25, v25, v26

    aget v26, p0, v15

    aget v27, p1, v11

    mul-float v26, v26, v27

    add-float v25, v25, v26

    aget v26, p0, v19

    aget v27, p1, v12

    mul-float v26, v26, v27

    add-float v25, v25, v26

    .line 1260
    aget v26, p0, v6

    aget v27, p1, v3

    mul-float v26, v26, v27

    aget v27, p0, v11

    aget v28, p1, v14

    mul-float v27, v27, v28

    add-float v26, v26, v27

    aget v27, p0, v15

    aget v28, p1, v15

    mul-float v27, v27, v28

    add-float v26, v26, v27

    aget v27, p0, v19

    aget v28, p1, v16

    mul-float v27, v27, v28

    add-float v26, v26, v27

    .line 1261
    aget v27, p0, v6

    aget v28, p1, v5

    mul-float v27, v27, v28

    aget v28, p0, v11

    aget v29, p1, v18

    mul-float v28, v28, v29

    add-float v27, v27, v28

    aget v28, p0, v15

    aget v29, p1, v19

    mul-float v28, v28, v29

    add-float v27, v27, v28

    aget v28, p0, v19

    aget v29, p1, v20

    mul-float v28, v28, v29

    add-float v27, v27, v28

    .line 1262
    aget v28, p0, v8

    aget v29, p1, v0

    mul-float v28, v28, v29

    aget v29, p0, v12

    aget v30, p1, v4

    mul-float v29, v29, v30

    add-float v28, v28, v29

    aget v29, p0, v16

    aget v30, p1, v6

    mul-float v29, v29, v30

    add-float v28, v28, v29

    aget v29, p0, v20

    aget v30, p1, v8

    mul-float v29, v29, v30

    add-float v28, v28, v29

    .line 1263
    aget v29, p0, v8

    aget v30, p1, v2

    mul-float v29, v29, v30

    aget v30, p0, v12

    aget v31, p1, v10

    mul-float v30, v30, v31

    add-float v29, v29, v30

    aget v30, p0, v16

    aget v31, p1, v11

    mul-float v30, v30, v31

    add-float v29, v29, v30

    aget v30, p0, v20

    aget v31, p1, v12

    mul-float v30, v30, v31

    add-float v29, v29, v30

    .line 1264
    aget v30, p0, v8

    aget v31, p1, v3

    mul-float v30, v30, v31

    aget v31, p0, v12

    aget v32, p1, v14

    mul-float v31, v31, v32

    add-float v30, v30, v31

    aget v31, p0, v16

    aget v32, p1, v15

    mul-float v31, v31, v32

    add-float v30, v30, v31

    aget v31, p0, v20

    aget v32, p1, v16

    mul-float v31, v31, v32

    add-float v30, v30, v31

    .line 1265
    aget v31, p0, v8

    aget v32, p1, v5

    mul-float v31, v31, v32

    aget v32, p0, v12

    aget v33, p1, v18

    mul-float v32, v32, v33

    add-float v31, v31, v32

    aget v32, p0, v16

    aget v33, p1, v19

    mul-float v32, v32, v33

    add-float v31, v31, v32

    aget v32, p0, v20

    aget v33, p1, v20

    mul-float v32, v32, v33

    add-float v31, v31, v32

    .line 1266
    aput v1, p0, v0

    .line 1267
    aput v17, p0, v4

    .line 1268
    aput v24, p0, v6

    .line 1269
    aput v28, p0, v8

    .line 1270
    aput v7, p0, v2

    .line 1271
    aput v21, p0, v10

    .line 1272
    aput v25, p0, v11

    .line 1273
    aput v29, p0, v12

    .line 1274
    aput v9, p0, v3

    .line 1275
    aput v22, p0, v14

    .line 1276
    aput v26, p0, v15

    .line 1277
    aput v30, p0, v16

    .line 1278
    aput v13, p0, v5

    .line 1279
    aput v23, p0, v18

    .line 1280
    aput v27, p0, v19

    .line 1281
    aput v31, p0, v20

    return-void
.end method

.method public static mulVec([F[F)V
    .locals 8

    const/4 v0, 0x0

    .line 1291
    aget v1, p1, v0

    aget v2, p0, v0

    mul-float v1, v1, v2

    const/4 v2, 0x1

    aget v3, p1, v2

    const/4 v4, 0x4

    aget v4, p0, v4

    mul-float v3, v3, v4

    add-float/2addr v1, v3

    const/4 v3, 0x2

    aget v4, p1, v3

    const/16 v5, 0x8

    aget v5, p0, v5

    mul-float v4, v4, v5

    add-float/2addr v1, v4

    const/16 v4, 0xc

    aget v4, p0, v4

    add-float/2addr v1, v4

    .line 1292
    aget v4, p1, v0

    aget v5, p0, v2

    mul-float v4, v4, v5

    aget v5, p1, v2

    const/4 v6, 0x5

    aget v6, p0, v6

    mul-float v5, v5, v6

    add-float/2addr v4, v5

    aget v5, p1, v3

    const/16 v6, 0x9

    aget v6, p0, v6

    mul-float v5, v5, v6

    add-float/2addr v4, v5

    const/16 v5, 0xd

    aget v5, p0, v5

    add-float/2addr v4, v5

    .line 1293
    aget v5, p1, v0

    aget v6, p0, v3

    mul-float v5, v5, v6

    aget v6, p1, v2

    const/4 v7, 0x6

    aget v7, p0, v7

    mul-float v6, v6, v7

    add-float/2addr v5, v6

    aget v6, p1, v3

    const/16 v7, 0xa

    aget v7, p0, v7

    mul-float v6, v6, v7

    add-float/2addr v5, v6

    const/16 v6, 0xe

    aget p0, p0, v6

    add-float/2addr v5, p0

    .line 1294
    aput v1, p1, v0

    .line 1295
    aput v4, p1, v2

    .line 1296
    aput v5, p1, v3

    return-void
.end method

.method public static native mulVec([F[FIII)V
.end method

.method public static prj([F[F)V
    .locals 9

    const/4 v0, 0x0

    .line 1306
    aget v1, p1, v0

    const/4 v2, 0x3

    aget v2, p0, v2

    mul-float v1, v1, v2

    const/4 v2, 0x1

    aget v3, p1, v2

    const/4 v4, 0x7

    aget v4, p0, v4

    mul-float v3, v3, v4

    add-float/2addr v1, v3

    const/4 v3, 0x2

    aget v4, p1, v3

    const/16 v5, 0xb

    aget v5, p0, v5

    mul-float v4, v4, v5

    add-float/2addr v1, v4

    const/16 v4, 0xf

    aget v4, p0, v4

    add-float/2addr v1, v4

    const/high16 v4, 0x3f800000    # 1.0f

    div-float/2addr v4, v1

    .line 1307
    aget v1, p1, v0

    aget v5, p0, v0

    mul-float v1, v1, v5

    aget v5, p1, v2

    const/4 v6, 0x4

    aget v6, p0, v6

    mul-float v5, v5, v6

    add-float/2addr v1, v5

    aget v5, p1, v3

    const/16 v6, 0x8

    aget v6, p0, v6

    mul-float v5, v5, v6

    add-float/2addr v1, v5

    const/16 v5, 0xc

    aget v5, p0, v5

    add-float/2addr v1, v5

    mul-float v1, v1, v4

    .line 1308
    aget v5, p1, v0

    aget v6, p0, v2

    mul-float v5, v5, v6

    aget v6, p1, v2

    const/4 v7, 0x5

    aget v7, p0, v7

    mul-float v6, v6, v7

    add-float/2addr v5, v6

    aget v6, p1, v3

    const/16 v7, 0x9

    aget v7, p0, v7

    mul-float v6, v6, v7

    add-float/2addr v5, v6

    const/16 v6, 0xd

    aget v6, p0, v6

    add-float/2addr v5, v6

    mul-float v5, v5, v4

    .line 1309
    aget v6, p1, v0

    aget v7, p0, v3

    mul-float v6, v6, v7

    aget v7, p1, v2

    const/4 v8, 0x6

    aget v8, p0, v8

    mul-float v7, v7, v8

    add-float/2addr v6, v7

    aget v7, p1, v3

    const/16 v8, 0xa

    aget v8, p0, v8

    mul-float v7, v7, v8

    add-float/2addr v6, v7

    const/16 v7, 0xe

    aget p0, p0, v7

    add-float/2addr v6, p0

    mul-float v6, v6, v4

    .line 1310
    aput v1, p1, v0

    .line 1311
    aput v5, p1, v2

    .line 1312
    aput v6, p1, v3

    return-void
.end method

.method public static native prj([F[FIII)V
.end method

.method public static rot([F[F)V
    .locals 8

    const/4 v0, 0x0

    .line 1322
    aget v1, p1, v0

    aget v2, p0, v0

    mul-float v1, v1, v2

    const/4 v2, 0x1

    aget v3, p1, v2

    const/4 v4, 0x4

    aget v4, p0, v4

    mul-float v3, v3, v4

    add-float/2addr v1, v3

    const/4 v3, 0x2

    aget v4, p1, v3

    const/16 v5, 0x8

    aget v5, p0, v5

    mul-float v4, v4, v5

    add-float/2addr v1, v4

    .line 1323
    aget v4, p1, v0

    aget v5, p0, v2

    mul-float v4, v4, v5

    aget v5, p1, v2

    const/4 v6, 0x5

    aget v6, p0, v6

    mul-float v5, v5, v6

    add-float/2addr v4, v5

    aget v5, p1, v3

    const/16 v6, 0x9

    aget v6, p0, v6

    mul-float v5, v5, v6

    add-float/2addr v4, v5

    .line 1324
    aget v5, p1, v0

    aget v6, p0, v3

    mul-float v5, v5, v6

    aget v6, p1, v2

    const/4 v7, 0x6

    aget v7, p0, v7

    mul-float v6, v6, v7

    add-float/2addr v5, v6

    aget v6, p1, v3

    const/16 v7, 0xa

    aget p0, p0, v7

    mul-float v6, v6, p0

    add-float/2addr v5, v6

    .line 1325
    aput v1, p1, v0

    .line 1326
    aput v4, p1, v2

    .line 1327
    aput v5, p1, v3

    return-void
.end method

.method public static native rot([F[FIII)V
.end method


# virtual methods
.method public avg(Lcom/badlogic/gdx/math/Matrix4;F)Lcom/badlogic/gdx/math/Matrix4;
    .locals 6

    .line 863
    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->tmpVec:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/math/Matrix4;->getScale(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 864
    sget-object v1, Lcom/badlogic/gdx/math/Matrix4;->tmpForward:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/math/Matrix4;->getScale(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 866
    sget-object v2, Lcom/badlogic/gdx/math/Matrix4;->quat:Lcom/badlogic/gdx/math/Quaternion;

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/math/Matrix4;->getRotation(Lcom/badlogic/gdx/math/Quaternion;)Lcom/badlogic/gdx/math/Quaternion;

    .line 867
    sget-object v3, Lcom/badlogic/gdx/math/Matrix4;->quat2:Lcom/badlogic/gdx/math/Quaternion;

    invoke-virtual {p1, v3}, Lcom/badlogic/gdx/math/Matrix4;->getRotation(Lcom/badlogic/gdx/math/Quaternion;)Lcom/badlogic/gdx/math/Quaternion;

    .line 869
    sget-object v4, Lcom/badlogic/gdx/math/Matrix4;->tmpUp:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p0, v4}, Lcom/badlogic/gdx/math/Matrix4;->getTranslation(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 870
    sget-object v5, Lcom/badlogic/gdx/math/Matrix4;->right:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p1, v5}, Lcom/badlogic/gdx/math/Matrix4;->getTranslation(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 872
    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p2

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/math/Vector3;->add(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Matrix4;->setToScaling(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Matrix4;

    .line 873
    invoke-virtual {v2, v3, v0}, Lcom/badlogic/gdx/math/Quaternion;->slerp(Lcom/badlogic/gdx/math/Quaternion;F)Lcom/badlogic/gdx/math/Quaternion;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Matrix4;->rotate(Lcom/badlogic/gdx/math/Quaternion;)Lcom/badlogic/gdx/math/Matrix4;

    .line 874
    invoke-virtual {v4, p2}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p1

    invoke-virtual {v5, v0}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/math/Vector3;->add(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Matrix4;->setTranslation(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Matrix4;

    return-object p0
.end method

.method public avg([Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;
    .locals 6

    .line 883
    array-length v0, p1

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    div-float/2addr v1, v0

    .line 885
    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->tmpVec:Lcom/badlogic/gdx/math/Vector3;

    const/4 v2, 0x0

    aget-object v3, p1, v2

    sget-object v4, Lcom/badlogic/gdx/math/Matrix4;->tmpUp:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/math/Matrix4;->getScale(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 886
    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->quat:Lcom/badlogic/gdx/math/Quaternion;

    aget-object v3, p1, v2

    sget-object v5, Lcom/badlogic/gdx/math/Matrix4;->quat2:Lcom/badlogic/gdx/math/Quaternion;

    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/math/Matrix4;->getRotation(Lcom/badlogic/gdx/math/Quaternion;)Lcom/badlogic/gdx/math/Quaternion;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/badlogic/gdx/math/Quaternion;->exp(F)Lcom/badlogic/gdx/math/Quaternion;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/math/Quaternion;->set(Lcom/badlogic/gdx/math/Quaternion;)Lcom/badlogic/gdx/math/Quaternion;

    .line 887
    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->tmpForward:Lcom/badlogic/gdx/math/Vector3;

    aget-object v2, p1, v2

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/math/Matrix4;->getTranslation(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    const/4 v0, 0x1

    .line 889
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 890
    sget-object v2, Lcom/badlogic/gdx/math/Matrix4;->tmpVec:Lcom/badlogic/gdx/math/Vector3;

    aget-object v3, p1, v0

    sget-object v4, Lcom/badlogic/gdx/math/Matrix4;->tmpUp:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/math/Matrix4;->getScale(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/math/Vector3;->add(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 891
    sget-object v2, Lcom/badlogic/gdx/math/Matrix4;->quat:Lcom/badlogic/gdx/math/Quaternion;

    aget-object v3, p1, v0

    sget-object v5, Lcom/badlogic/gdx/math/Matrix4;->quat2:Lcom/badlogic/gdx/math/Quaternion;

    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/math/Matrix4;->getRotation(Lcom/badlogic/gdx/math/Quaternion;)Lcom/badlogic/gdx/math/Quaternion;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/badlogic/gdx/math/Quaternion;->exp(F)Lcom/badlogic/gdx/math/Quaternion;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/math/Quaternion;->mul(Lcom/badlogic/gdx/math/Quaternion;)Lcom/badlogic/gdx/math/Quaternion;

    .line 892
    sget-object v2, Lcom/badlogic/gdx/math/Matrix4;->tmpForward:Lcom/badlogic/gdx/math/Vector3;

    aget-object v3, p1, v0

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/math/Matrix4;->getTranslation(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/math/Vector3;->add(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 894
    :cond_0
    sget-object p1, Lcom/badlogic/gdx/math/Matrix4;->quat:Lcom/badlogic/gdx/math/Quaternion;

    invoke-virtual {p1}, Lcom/badlogic/gdx/math/Quaternion;->nor()Lcom/badlogic/gdx/math/Quaternion;

    .line 896
    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->tmpVec:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/math/Matrix4;->setToScaling(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Matrix4;

    .line 897
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Matrix4;->rotate(Lcom/badlogic/gdx/math/Quaternion;)Lcom/badlogic/gdx/math/Matrix4;

    .line 898
    sget-object p1, Lcom/badlogic/gdx/math/Matrix4;->tmpForward:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Matrix4;->setTranslation(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Matrix4;

    return-object p0
.end method

.method public avg([Lcom/badlogic/gdx/math/Matrix4;[F)Lcom/badlogic/gdx/math/Matrix4;
    .locals 5

    .line 909
    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->tmpVec:Lcom/badlogic/gdx/math/Vector3;

    const/4 v1, 0x0

    aget-object v2, p1, v1

    sget-object v3, Lcom/badlogic/gdx/math/Matrix4;->tmpUp:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/math/Matrix4;->getScale(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v2

    aget v4, p2, v1

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 910
    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->quat:Lcom/badlogic/gdx/math/Quaternion;

    aget-object v2, p1, v1

    sget-object v4, Lcom/badlogic/gdx/math/Matrix4;->quat2:Lcom/badlogic/gdx/math/Quaternion;

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/math/Matrix4;->getRotation(Lcom/badlogic/gdx/math/Quaternion;)Lcom/badlogic/gdx/math/Quaternion;

    move-result-object v2

    aget v4, p2, v1

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/math/Quaternion;->exp(F)Lcom/badlogic/gdx/math/Quaternion;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/math/Quaternion;->set(Lcom/badlogic/gdx/math/Quaternion;)Lcom/badlogic/gdx/math/Quaternion;

    .line 911
    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->tmpForward:Lcom/badlogic/gdx/math/Vector3;

    aget-object v2, p1, v1

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/math/Matrix4;->getTranslation(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v2

    aget v1, p2, v1

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    const/4 v0, 0x1

    .line 913
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 914
    sget-object v1, Lcom/badlogic/gdx/math/Matrix4;->tmpVec:Lcom/badlogic/gdx/math/Vector3;

    aget-object v2, p1, v0

    sget-object v3, Lcom/badlogic/gdx/math/Matrix4;->tmpUp:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/math/Matrix4;->getScale(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v2

    aget v4, p2, v0

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/math/Vector3;->add(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 915
    sget-object v1, Lcom/badlogic/gdx/math/Matrix4;->quat:Lcom/badlogic/gdx/math/Quaternion;

    aget-object v2, p1, v0

    sget-object v4, Lcom/badlogic/gdx/math/Matrix4;->quat2:Lcom/badlogic/gdx/math/Quaternion;

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/math/Matrix4;->getRotation(Lcom/badlogic/gdx/math/Quaternion;)Lcom/badlogic/gdx/math/Quaternion;

    move-result-object v2

    aget v4, p2, v0

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/math/Quaternion;->exp(F)Lcom/badlogic/gdx/math/Quaternion;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/math/Quaternion;->mul(Lcom/badlogic/gdx/math/Quaternion;)Lcom/badlogic/gdx/math/Quaternion;

    .line 916
    sget-object v1, Lcom/badlogic/gdx/math/Matrix4;->tmpForward:Lcom/badlogic/gdx/math/Vector3;

    aget-object v2, p1, v0

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/math/Matrix4;->getTranslation(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v2

    aget v3, p2, v0

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/math/Vector3;->add(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 918
    :cond_0
    sget-object p1, Lcom/badlogic/gdx/math/Matrix4;->quat:Lcom/badlogic/gdx/math/Quaternion;

    invoke-virtual {p1}, Lcom/badlogic/gdx/math/Quaternion;->nor()Lcom/badlogic/gdx/math/Quaternion;

    .line 920
    sget-object p2, Lcom/badlogic/gdx/math/Matrix4;->tmpVec:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/math/Matrix4;->setToScaling(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Matrix4;

    .line 921
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Matrix4;->rotate(Lcom/badlogic/gdx/math/Quaternion;)Lcom/badlogic/gdx/math/Matrix4;

    .line 922
    sget-object p1, Lcom/badlogic/gdx/math/Matrix4;->tmpForward:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Matrix4;->setTranslation(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Matrix4;

    return-object p0
.end method

.method public cpy()Lcom/badlogic/gdx/math/Matrix4;
    .locals 1

    .line 282
    new-instance v0, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/math/Matrix4;-><init>(Lcom/badlogic/gdx/math/Matrix4;)V

    return-object v0
.end method

.method public det()F
    .locals 18

    move-object/from16 v0, p0

    .line 453
    iget-object v1, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v2, 0x3

    aget v3, v1, v2

    const/4 v4, 0x6

    aget v5, v1, v4

    mul-float v3, v3, v5

    const/16 v5, 0x9

    aget v6, v1, v5

    mul-float v3, v3, v6

    const/16 v6, 0xc

    aget v7, v1, v6

    mul-float v3, v3, v7

    const/4 v7, 0x2

    aget v8, v1, v7

    const/4 v9, 0x7

    aget v10, v1, v9

    mul-float v8, v8, v10

    aget v10, v1, v5

    mul-float v8, v8, v10

    aget v10, v1, v6

    mul-float v8, v8, v10

    sub-float/2addr v3, v8

    aget v8, v1, v2

    const/4 v10, 0x5

    aget v11, v1, v10

    mul-float v8, v8, v11

    const/16 v11, 0xa

    aget v12, v1, v11

    mul-float v8, v8, v12

    aget v12, v1, v6

    mul-float v8, v8, v12

    sub-float/2addr v3, v8

    const/4 v8, 0x1

    aget v12, v1, v8

    aget v13, v1, v9

    mul-float v12, v12, v13

    aget v13, v1, v11

    mul-float v12, v12, v13

    aget v13, v1, v6

    mul-float v12, v12, v13

    add-float/2addr v3, v12

    aget v12, v1, v7

    aget v13, v1, v10

    mul-float v12, v12, v13

    const/16 v13, 0xb

    aget v14, v1, v13

    mul-float v12, v12, v14

    aget v14, v1, v6

    mul-float v12, v12, v14

    add-float/2addr v3, v12

    aget v12, v1, v8

    aget v14, v1, v4

    mul-float v12, v12, v14

    aget v14, v1, v13

    mul-float v12, v12, v14

    aget v6, v1, v6

    mul-float v12, v12, v6

    sub-float/2addr v3, v12

    aget v6, v1, v2

    aget v12, v1, v4

    mul-float v6, v6, v12

    const/16 v12, 0x8

    aget v14, v1, v12

    mul-float v6, v6, v14

    const/16 v14, 0xd

    aget v15, v1, v14

    mul-float v6, v6, v15

    sub-float/2addr v3, v6

    aget v6, v1, v7

    aget v15, v1, v9

    mul-float v6, v6, v15

    aget v15, v1, v12

    mul-float v6, v6, v15

    aget v15, v1, v14

    mul-float v6, v6, v15

    add-float/2addr v3, v6

    aget v6, v1, v2

    const/4 v15, 0x4

    aget v16, v1, v15

    mul-float v6, v6, v16

    aget v16, v1, v11

    mul-float v6, v6, v16

    aget v16, v1, v14

    mul-float v6, v6, v16

    add-float/2addr v3, v6

    const/4 v6, 0x0

    aget v16, v1, v6

    aget v17, v1, v9

    mul-float v16, v16, v17

    aget v17, v1, v11

    mul-float v16, v16, v17

    aget v17, v1, v14

    mul-float v16, v16, v17

    sub-float v3, v3, v16

    aget v16, v1, v7

    aget v17, v1, v15

    mul-float v16, v16, v17

    aget v17, v1, v13

    mul-float v16, v16, v17

    aget v17, v1, v14

    mul-float v16, v16, v17

    sub-float v3, v3, v16

    aget v16, v1, v6

    aget v17, v1, v4

    mul-float v16, v16, v17

    aget v17, v1, v13

    mul-float v16, v16, v17

    aget v14, v1, v14

    mul-float v16, v16, v14

    add-float v3, v3, v16

    aget v14, v1, v2

    aget v16, v1, v10

    mul-float v14, v14, v16

    aget v16, v1, v12

    mul-float v14, v14, v16

    const/16 v16, 0xe

    aget v17, v1, v16

    mul-float v14, v14, v17

    add-float/2addr v3, v14

    aget v14, v1, v8

    aget v17, v1, v9

    mul-float v14, v14, v17

    aget v17, v1, v12

    mul-float v14, v14, v17

    aget v17, v1, v16

    mul-float v14, v14, v17

    sub-float/2addr v3, v14

    aget v2, v1, v2

    aget v14, v1, v15

    mul-float v2, v2, v14

    aget v14, v1, v5

    mul-float v2, v2, v14

    aget v14, v1, v16

    mul-float v2, v2, v14

    sub-float/2addr v3, v2

    aget v2, v1, v6

    aget v9, v1, v9

    mul-float v2, v2, v9

    aget v9, v1, v5

    mul-float v2, v2, v9

    aget v9, v1, v16

    mul-float v2, v2, v9

    add-float/2addr v3, v2

    aget v2, v1, v8

    aget v9, v1, v15

    mul-float v2, v2, v9

    aget v9, v1, v13

    mul-float v2, v2, v9

    aget v9, v1, v16

    mul-float v2, v2, v9

    add-float/2addr v3, v2

    aget v2, v1, v6

    aget v9, v1, v10

    mul-float v2, v2, v9

    aget v9, v1, v13

    mul-float v2, v2, v9

    aget v9, v1, v16

    mul-float v2, v2, v9

    sub-float/2addr v3, v2

    aget v2, v1, v7

    aget v9, v1, v10

    mul-float v2, v2, v9

    aget v9, v1, v12

    mul-float v2, v2, v9

    const/16 v9, 0xf

    aget v13, v1, v9

    mul-float v2, v2, v13

    sub-float/2addr v3, v2

    aget v2, v1, v8

    aget v13, v1, v4

    mul-float v2, v2, v13

    aget v12, v1, v12

    mul-float v2, v2, v12

    aget v12, v1, v9

    mul-float v2, v2, v12

    add-float/2addr v3, v2

    aget v2, v1, v7

    aget v7, v1, v15

    mul-float v2, v2, v7

    aget v7, v1, v5

    mul-float v2, v2, v7

    aget v7, v1, v9

    mul-float v2, v2, v7

    add-float/2addr v3, v2

    aget v2, v1, v6

    aget v4, v1, v4

    mul-float v2, v2, v4

    aget v4, v1, v5

    mul-float v2, v2, v4

    aget v4, v1, v9

    mul-float v2, v2, v4

    sub-float/2addr v3, v2

    aget v2, v1, v8

    aget v4, v1, v15

    mul-float v2, v2, v4

    aget v4, v1, v11

    mul-float v2, v2, v4

    aget v4, v1, v9

    mul-float v2, v2, v4

    sub-float/2addr v3, v2

    aget v2, v1, v6

    aget v4, v1, v10

    mul-float v2, v2, v4

    aget v4, v1, v11

    mul-float v2, v2, v4

    aget v1, v1, v9

    mul-float v2, v2, v1

    add-float/2addr v3, v2

    return v3
.end method

.method public det3x3()F
    .locals 13

    .line 466
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x0

    aget v2, v0, v1

    const/4 v3, 0x5

    aget v4, v0, v3

    mul-float v2, v2, v4

    const/16 v4, 0xa

    aget v5, v0, v4

    mul-float v2, v2, v5

    const/4 v5, 0x4

    aget v6, v0, v5

    const/16 v7, 0x9

    aget v8, v0, v7

    mul-float v6, v6, v8

    const/4 v8, 0x2

    aget v9, v0, v8

    mul-float v6, v6, v9

    add-float/2addr v2, v6

    const/16 v6, 0x8

    aget v9, v0, v6

    const/4 v10, 0x1

    aget v11, v0, v10

    mul-float v9, v9, v11

    const/4 v11, 0x6

    aget v12, v0, v11

    mul-float v9, v9, v12

    add-float/2addr v2, v9

    aget v1, v0, v1

    aget v7, v0, v7

    mul-float v1, v1, v7

    aget v7, v0, v11

    mul-float v1, v1, v7

    sub-float/2addr v2, v1

    aget v1, v0, v5

    aget v5, v0, v10

    mul-float v1, v1, v5

    aget v4, v0, v4

    mul-float v1, v1, v4

    sub-float/2addr v2, v1

    aget v1, v0, v6

    aget v3, v0, v3

    mul-float v1, v1, v3

    aget v0, v0, v8

    mul-float v1, v1, v0

    sub-float/2addr v2, v1

    return v2
.end method

.method public extract4x3Matrix([F)V
    .locals 5

    .line 1621
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x0

    aget v2, v0, v1

    aput v2, p1, v1

    const/4 v1, 0x1

    .line 1622
    aget v2, v0, v1

    aput v2, p1, v1

    const/4 v1, 0x2

    .line 1623
    aget v2, v0, v1

    aput v2, p1, v1

    const/4 v1, 0x4

    .line 1624
    aget v2, v0, v1

    const/4 v3, 0x3

    aput v2, p1, v3

    const/4 v2, 0x5

    .line 1625
    aget v3, v0, v2

    aput v3, p1, v1

    const/4 v1, 0x6

    .line 1626
    aget v3, v0, v1

    aput v3, p1, v2

    const/16 v2, 0x8

    .line 1627
    aget v3, v0, v2

    aput v3, p1, v1

    const/16 v1, 0x9

    .line 1628
    aget v3, v0, v1

    const/4 v4, 0x7

    aput v3, p1, v4

    const/16 v3, 0xa

    .line 1629
    aget v4, v0, v3

    aput v4, p1, v2

    const/16 v2, 0xc

    .line 1630
    aget v2, v0, v2

    aput v2, p1, v1

    const/16 v1, 0xd

    .line 1631
    aget v1, v0, v1

    aput v1, p1, v3

    const/16 v1, 0xe

    .line 1632
    aget v0, v0, v1

    const/16 v1, 0xb

    aput v0, p1, v1

    return-void
.end method

.method public getRotation(Lcom/badlogic/gdx/math/Quaternion;)Lcom/badlogic/gdx/math/Quaternion;
    .locals 0

    .line 1059
    invoke-virtual {p1, p0}, Lcom/badlogic/gdx/math/Quaternion;->setFromMatrix(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Quaternion;

    move-result-object p1

    return-object p1
.end method

.method public getRotation(Lcom/badlogic/gdx/math/Quaternion;Z)Lcom/badlogic/gdx/math/Quaternion;
    .locals 0

    .line 1052
    invoke-virtual {p1, p2, p0}, Lcom/badlogic/gdx/math/Quaternion;->setFromMatrix(ZLcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Quaternion;

    move-result-object p1

    return-object p1
.end method

.method public getScale(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;
    .locals 3

    .line 1098
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Matrix4;->getScaleX()F

    move-result v0

    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Matrix4;->getScaleY()F

    move-result v1

    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Matrix4;->getScaleZ()F

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p1

    return-object p1
.end method

.method public getScaleX()F
    .locals 2

    .line 1079
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x4

    aget v0, v0, v1

    invoke-static {v0}, Lcom/badlogic/gdx/math/MathUtils;->isZero(F)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0x8

    aget v0, v0, v1

    invoke-static {v0}, Lcom/badlogic/gdx/math/MathUtils;->isZero(F)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    goto :goto_0

    .line 1080
    :cond_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Matrix4;->getScaleXSquared()F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    :goto_0
    return v0
.end method

.method public getScaleXSquared()F
    .locals 4

    .line 1064
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x0

    aget v2, v0, v1

    aget v1, v0, v1

    mul-float v2, v2, v1

    const/4 v1, 0x4

    aget v3, v0, v1

    aget v1, v0, v1

    mul-float v3, v3, v1

    add-float/2addr v2, v3

    const/16 v1, 0x8

    aget v3, v0, v1

    aget v0, v0, v1

    mul-float v3, v3, v0

    add-float/2addr v2, v3

    return v2
.end method

.method public getScaleY()F
    .locals 2

    .line 1085
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    invoke-static {v0}, Lcom/badlogic/gdx/math/MathUtils;->isZero(F)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0x9

    aget v0, v0, v1

    invoke-static {v0}, Lcom/badlogic/gdx/math/MathUtils;->isZero(F)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x5

    aget v0, v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    goto :goto_0

    .line 1086
    :cond_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Matrix4;->getScaleYSquared()F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    :goto_0
    return v0
.end method

.method public getScaleYSquared()F
    .locals 4

    .line 1069
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x1

    aget v2, v0, v1

    aget v1, v0, v1

    mul-float v2, v2, v1

    const/4 v1, 0x5

    aget v3, v0, v1

    aget v1, v0, v1

    mul-float v3, v3, v1

    add-float/2addr v2, v3

    const/16 v1, 0x9

    aget v3, v0, v1

    aget v0, v0, v1

    mul-float v3, v3, v0

    add-float/2addr v2, v3

    return v2
.end method

.method public getScaleZ()F
    .locals 2

    .line 1091
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    invoke-static {v0}, Lcom/badlogic/gdx/math/MathUtils;->isZero(F)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x6

    aget v0, v0, v1

    invoke-static {v0}, Lcom/badlogic/gdx/math/MathUtils;->isZero(F)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xa

    aget v0, v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    goto :goto_0

    .line 1092
    :cond_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Matrix4;->getScaleZSquared()F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    :goto_0
    return v0
.end method

.method public getScaleZSquared()F
    .locals 4

    .line 1074
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x2

    aget v2, v0, v1

    aget v1, v0, v1

    mul-float v2, v2, v1

    const/4 v1, 0x6

    aget v3, v0, v1

    aget v1, v0, v1

    mul-float v3, v3, v1

    add-float/2addr v2, v3

    const/16 v1, 0xa

    aget v3, v0, v1

    aget v0, v0, v1

    mul-float v3, v3, v0

    add-float/2addr v2, v3

    return v2
.end method

.method public getTranslation(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;
    .locals 2

    .line 1041
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xc

    aget v0, v0, v1

    iput v0, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    .line 1042
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xd

    aget v0, v0, v1

    iput v0, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    .line 1043
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xe

    aget v0, v0, v1

    iput v0, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    return-object p1
.end method

.method public getValues()[F
    .locals 1

    .line 309
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    return-object v0
.end method

.method public hasRotationOrScaling()Z
    .locals 5

    .line 1637
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v2}, Lcom/badlogic/gdx/math/MathUtils;->isEqual(FF)Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v4, 0x5

    aget v0, v0, v4

    invoke-static {v0, v2}, Lcom/badlogic/gdx/math/MathUtils;->isEqual(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v4, 0xa

    aget v0, v0, v4

    invoke-static {v0, v2}, Lcom/badlogic/gdx/math/MathUtils;->isEqual(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v2, 0x4

    aget v0, v0, v2

    .line 1638
    invoke-static {v0}, Lcom/badlogic/gdx/math/MathUtils;->isZero(F)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v2, 0x8

    aget v0, v0, v2

    invoke-static {v0}, Lcom/badlogic/gdx/math/MathUtils;->isZero(F)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v0, v0, v3

    invoke-static {v0}, Lcom/badlogic/gdx/math/MathUtils;->isZero(F)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v2, 0x9

    aget v0, v0, v2

    invoke-static {v0}, Lcom/badlogic/gdx/math/MathUtils;->isZero(F)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v2, 0x2

    aget v0, v0, v2

    .line 1639
    invoke-static {v0}, Lcom/badlogic/gdx/math/MathUtils;->isZero(F)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v2, 0x6

    aget v0, v0, v2

    invoke-static {v0}, Lcom/badlogic/gdx/math/MathUtils;->isZero(F)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public idt()Lcom/badlogic/gdx/math/Matrix4;
    .locals 4

    .line 366
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v0, v1

    const/4 v1, 0x4

    const/4 v3, 0x0

    .line 367
    aput v3, v0, v1

    const/16 v1, 0x8

    .line 368
    aput v3, v0, v1

    const/16 v1, 0xc

    .line 369
    aput v3, v0, v1

    const/4 v1, 0x1

    .line 370
    aput v3, v0, v1

    const/4 v1, 0x5

    .line 371
    aput v2, v0, v1

    const/16 v1, 0x9

    .line 372
    aput v3, v0, v1

    const/16 v1, 0xd

    .line 373
    aput v3, v0, v1

    const/4 v1, 0x2

    .line 374
    aput v3, v0, v1

    const/4 v1, 0x6

    .line 375
    aput v3, v0, v1

    const/16 v1, 0xa

    .line 376
    aput v2, v0, v1

    const/16 v1, 0xe

    .line 377
    aput v3, v0, v1

    const/4 v1, 0x3

    .line 378
    aput v3, v0, v1

    const/4 v1, 0x7

    .line 379
    aput v3, v0, v1

    const/16 v1, 0xb

    .line 380
    aput v3, v0, v1

    const/16 v1, 0xf

    .line 381
    aput v2, v0, v1

    return-object p0
.end method

.method public inv()Lcom/badlogic/gdx/math/Matrix4;
    .locals 37

    move-object/from16 v0, p0

    .line 389
    iget-object v1, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v2, 0x3

    aget v3, v1, v2

    const/4 v4, 0x6

    aget v5, v1, v4

    mul-float v3, v3, v5

    const/16 v5, 0x9

    aget v6, v1, v5

    mul-float v3, v3, v6

    const/16 v6, 0xc

    aget v7, v1, v6

    mul-float v3, v3, v7

    const/4 v7, 0x2

    aget v8, v1, v7

    const/4 v9, 0x7

    aget v10, v1, v9

    mul-float v8, v8, v10

    aget v10, v1, v5

    mul-float v8, v8, v10

    aget v10, v1, v6

    mul-float v8, v8, v10

    sub-float/2addr v3, v8

    aget v8, v1, v2

    const/4 v10, 0x5

    aget v11, v1, v10

    mul-float v8, v8, v11

    const/16 v11, 0xa

    aget v12, v1, v11

    mul-float v8, v8, v12

    aget v12, v1, v6

    mul-float v8, v8, v12

    sub-float/2addr v3, v8

    const/4 v8, 0x1

    aget v12, v1, v8

    aget v13, v1, v9

    mul-float v12, v12, v13

    aget v13, v1, v11

    mul-float v12, v12, v13

    aget v13, v1, v6

    mul-float v12, v12, v13

    add-float/2addr v3, v12

    aget v12, v1, v7

    aget v13, v1, v10

    mul-float v12, v12, v13

    const/16 v13, 0xb

    aget v14, v1, v13

    mul-float v12, v12, v14

    aget v14, v1, v6

    mul-float v12, v12, v14

    add-float/2addr v3, v12

    aget v12, v1, v8

    aget v14, v1, v4

    mul-float v12, v12, v14

    aget v14, v1, v13

    mul-float v12, v12, v14

    aget v14, v1, v6

    mul-float v12, v12, v14

    sub-float/2addr v3, v12

    aget v12, v1, v2

    aget v14, v1, v4

    mul-float v12, v12, v14

    const/16 v14, 0x8

    aget v15, v1, v14

    mul-float v12, v12, v15

    const/16 v15, 0xd

    aget v16, v1, v15

    mul-float v12, v12, v16

    sub-float/2addr v3, v12

    aget v12, v1, v7

    aget v16, v1, v9

    mul-float v12, v12, v16

    aget v16, v1, v14

    mul-float v12, v12, v16

    aget v16, v1, v15

    mul-float v12, v12, v16

    add-float/2addr v3, v12

    aget v12, v1, v2

    const/16 v16, 0x4

    aget v17, v1, v16

    mul-float v12, v12, v17

    aget v17, v1, v11

    mul-float v12, v12, v17

    aget v17, v1, v15

    mul-float v12, v12, v17

    add-float/2addr v3, v12

    const/4 v12, 0x0

    aget v17, v1, v12

    aget v18, v1, v9

    mul-float v17, v17, v18

    aget v18, v1, v11

    mul-float v17, v17, v18

    aget v18, v1, v15

    mul-float v17, v17, v18

    sub-float v3, v3, v17

    aget v17, v1, v7

    aget v18, v1, v16

    mul-float v17, v17, v18

    aget v18, v1, v13

    mul-float v17, v17, v18

    aget v18, v1, v15

    mul-float v17, v17, v18

    sub-float v3, v3, v17

    aget v17, v1, v12

    aget v18, v1, v4

    mul-float v17, v17, v18

    aget v18, v1, v13

    mul-float v17, v17, v18

    aget v18, v1, v15

    mul-float v17, v17, v18

    add-float v3, v3, v17

    aget v17, v1, v2

    aget v18, v1, v10

    mul-float v17, v17, v18

    aget v18, v1, v14

    mul-float v17, v17, v18

    const/16 v18, 0xe

    aget v19, v1, v18

    mul-float v17, v17, v19

    add-float v3, v3, v17

    aget v17, v1, v8

    aget v19, v1, v9

    mul-float v17, v17, v19

    aget v19, v1, v14

    mul-float v17, v17, v19

    aget v19, v1, v18

    mul-float v17, v17, v19

    sub-float v3, v3, v17

    aget v17, v1, v2

    aget v19, v1, v16

    mul-float v17, v17, v19

    aget v19, v1, v5

    mul-float v17, v17, v19

    aget v19, v1, v18

    mul-float v17, v17, v19

    sub-float v3, v3, v17

    aget v17, v1, v12

    aget v19, v1, v9

    mul-float v17, v17, v19

    aget v19, v1, v5

    mul-float v17, v17, v19

    aget v19, v1, v18

    mul-float v17, v17, v19

    add-float v3, v3, v17

    aget v17, v1, v8

    aget v19, v1, v16

    mul-float v17, v17, v19

    aget v19, v1, v13

    mul-float v17, v17, v19

    aget v19, v1, v18

    mul-float v17, v17, v19

    add-float v3, v3, v17

    aget v17, v1, v12

    aget v19, v1, v10

    mul-float v17, v17, v19

    aget v19, v1, v13

    mul-float v17, v17, v19

    aget v19, v1, v18

    mul-float v17, v17, v19

    sub-float v3, v3, v17

    aget v17, v1, v7

    aget v19, v1, v10

    mul-float v17, v17, v19

    aget v19, v1, v14

    mul-float v17, v17, v19

    const/16 v19, 0xf

    aget v20, v1, v19

    mul-float v17, v17, v20

    sub-float v3, v3, v17

    aget v17, v1, v8

    aget v20, v1, v4

    mul-float v17, v17, v20

    aget v20, v1, v14

    mul-float v17, v17, v20

    aget v20, v1, v19

    mul-float v17, v17, v20

    add-float v3, v3, v17

    aget v17, v1, v7

    aget v20, v1, v16

    mul-float v17, v17, v20

    aget v20, v1, v5

    mul-float v17, v17, v20

    aget v20, v1, v19

    mul-float v17, v17, v20

    add-float v3, v3, v17

    aget v17, v1, v12

    aget v20, v1, v4

    mul-float v17, v17, v20

    aget v20, v1, v5

    mul-float v17, v17, v20

    aget v20, v1, v19

    mul-float v17, v17, v20

    sub-float v3, v3, v17

    aget v17, v1, v8

    aget v20, v1, v16

    mul-float v17, v17, v20

    aget v20, v1, v11

    mul-float v17, v17, v20

    aget v20, v1, v19

    mul-float v17, v17, v20

    sub-float v3, v3, v17

    aget v17, v1, v12

    aget v20, v1, v10

    mul-float v17, v17, v20

    aget v20, v1, v11

    mul-float v17, v17, v20

    aget v20, v1, v19

    mul-float v17, v17, v20

    add-float v3, v3, v17

    const/16 v17, 0x0

    cmpl-float v17, v3, v17

    if-eqz v17, :cond_0

    .line 399
    aget v17, v1, v5

    aget v20, v1, v18

    mul-float v17, v17, v20

    aget v20, v1, v9

    mul-float v17, v17, v20

    aget v20, v1, v15

    aget v21, v1, v11

    mul-float v20, v20, v21

    aget v21, v1, v9

    mul-float v20, v20, v21

    sub-float v17, v17, v20

    aget v20, v1, v15

    aget v21, v1, v4

    mul-float v20, v20, v21

    aget v21, v1, v13

    mul-float v20, v20, v21

    add-float v17, v17, v20

    aget v20, v1, v10

    aget v21, v1, v18

    mul-float v20, v20, v21

    aget v21, v1, v13

    mul-float v20, v20, v21

    sub-float v17, v17, v20

    aget v20, v1, v5

    aget v21, v1, v4

    mul-float v20, v20, v21

    aget v21, v1, v19

    mul-float v20, v20, v21

    sub-float v17, v17, v20

    aget v20, v1, v10

    aget v21, v1, v11

    mul-float v20, v20, v21

    aget v21, v1, v19

    mul-float v20, v20, v21

    add-float v17, v17, v20

    .line 401
    aget v20, v1, v6

    aget v21, v1, v11

    mul-float v20, v20, v21

    aget v21, v1, v9

    mul-float v20, v20, v21

    aget v21, v1, v14

    aget v22, v1, v18

    mul-float v21, v21, v22

    aget v22, v1, v9

    mul-float v21, v21, v22

    sub-float v20, v20, v21

    aget v21, v1, v6

    aget v22, v1, v4

    mul-float v21, v21, v22

    aget v22, v1, v13

    mul-float v21, v21, v22

    sub-float v20, v20, v21

    aget v21, v1, v16

    aget v22, v1, v18

    mul-float v21, v21, v22

    aget v22, v1, v13

    mul-float v21, v21, v22

    add-float v20, v20, v21

    aget v21, v1, v14

    aget v22, v1, v4

    mul-float v21, v21, v22

    aget v22, v1, v19

    mul-float v21, v21, v22

    add-float v20, v20, v21

    aget v21, v1, v16

    aget v22, v1, v11

    mul-float v21, v21, v22

    aget v22, v1, v19

    mul-float v21, v21, v22

    sub-float v20, v20, v21

    .line 403
    aget v21, v1, v14

    aget v22, v1, v15

    mul-float v21, v21, v22

    aget v22, v1, v9

    mul-float v21, v21, v22

    aget v22, v1, v6

    aget v23, v1, v5

    mul-float v22, v22, v23

    aget v23, v1, v9

    mul-float v22, v22, v23

    sub-float v21, v21, v22

    aget v22, v1, v6

    aget v23, v1, v10

    mul-float v22, v22, v23

    aget v23, v1, v13

    mul-float v22, v22, v23

    add-float v21, v21, v22

    aget v22, v1, v16

    aget v23, v1, v15

    mul-float v22, v22, v23

    aget v23, v1, v13

    mul-float v22, v22, v23

    sub-float v21, v21, v22

    aget v22, v1, v14

    aget v23, v1, v10

    mul-float v22, v22, v23

    aget v23, v1, v19

    mul-float v22, v22, v23

    sub-float v21, v21, v22

    aget v22, v1, v16

    aget v23, v1, v5

    mul-float v22, v22, v23

    aget v23, v1, v19

    mul-float v22, v22, v23

    add-float v21, v21, v22

    .line 405
    aget v22, v1, v6

    aget v23, v1, v5

    mul-float v22, v22, v23

    aget v23, v1, v4

    mul-float v22, v22, v23

    aget v23, v1, v14

    aget v24, v1, v15

    mul-float v23, v23, v24

    aget v24, v1, v4

    mul-float v23, v23, v24

    sub-float v22, v22, v23

    aget v23, v1, v6

    aget v24, v1, v10

    mul-float v23, v23, v24

    aget v24, v1, v11

    mul-float v23, v23, v24

    sub-float v22, v22, v23

    aget v23, v1, v16

    aget v24, v1, v15

    mul-float v23, v23, v24

    aget v24, v1, v11

    mul-float v23, v23, v24

    add-float v22, v22, v23

    aget v23, v1, v14

    aget v24, v1, v10

    mul-float v23, v23, v24

    aget v24, v1, v18

    mul-float v23, v23, v24

    add-float v22, v22, v23

    aget v23, v1, v16

    aget v24, v1, v5

    mul-float v23, v23, v24

    aget v24, v1, v18

    mul-float v23, v23, v24

    sub-float v22, v22, v23

    .line 407
    aget v23, v1, v15

    aget v24, v1, v11

    mul-float v23, v23, v24

    aget v24, v1, v2

    mul-float v23, v23, v24

    aget v24, v1, v5

    aget v25, v1, v18

    mul-float v24, v24, v25

    aget v25, v1, v2

    mul-float v24, v24, v25

    sub-float v23, v23, v24

    aget v24, v1, v15

    aget v25, v1, v7

    mul-float v24, v24, v25

    aget v25, v1, v13

    mul-float v24, v24, v25

    sub-float v23, v23, v24

    aget v24, v1, v8

    aget v25, v1, v18

    mul-float v24, v24, v25

    aget v25, v1, v13

    mul-float v24, v24, v25

    add-float v23, v23, v24

    aget v24, v1, v5

    aget v25, v1, v7

    mul-float v24, v24, v25

    aget v25, v1, v19

    mul-float v24, v24, v25

    add-float v23, v23, v24

    aget v24, v1, v8

    aget v25, v1, v11

    mul-float v24, v24, v25

    aget v25, v1, v19

    mul-float v24, v24, v25

    sub-float v23, v23, v24

    .line 409
    aget v24, v1, v14

    aget v25, v1, v18

    mul-float v24, v24, v25

    aget v25, v1, v2

    mul-float v24, v24, v25

    aget v25, v1, v6

    aget v26, v1, v11

    mul-float v25, v25, v26

    aget v26, v1, v2

    mul-float v25, v25, v26

    sub-float v24, v24, v25

    aget v25, v1, v6

    aget v26, v1, v7

    mul-float v25, v25, v26

    aget v26, v1, v13

    mul-float v25, v25, v26

    add-float v24, v24, v25

    aget v25, v1, v12

    aget v26, v1, v18

    mul-float v25, v25, v26

    aget v26, v1, v13

    mul-float v25, v25, v26

    sub-float v24, v24, v25

    aget v25, v1, v14

    aget v26, v1, v7

    mul-float v25, v25, v26

    aget v26, v1, v19

    mul-float v25, v25, v26

    sub-float v24, v24, v25

    aget v25, v1, v12

    aget v26, v1, v11

    mul-float v25, v25, v26

    aget v26, v1, v19

    mul-float v25, v25, v26

    add-float v24, v24, v25

    .line 411
    aget v25, v1, v6

    aget v26, v1, v5

    mul-float v25, v25, v26

    aget v26, v1, v2

    mul-float v25, v25, v26

    aget v26, v1, v14

    aget v27, v1, v15

    mul-float v26, v26, v27

    aget v27, v1, v2

    mul-float v26, v26, v27

    sub-float v25, v25, v26

    aget v26, v1, v6

    aget v27, v1, v8

    mul-float v26, v26, v27

    aget v27, v1, v13

    mul-float v26, v26, v27

    sub-float v25, v25, v26

    aget v26, v1, v12

    aget v27, v1, v15

    mul-float v26, v26, v27

    aget v27, v1, v13

    mul-float v26, v26, v27

    add-float v25, v25, v26

    aget v26, v1, v14

    aget v27, v1, v8

    mul-float v26, v26, v27

    aget v27, v1, v19

    mul-float v26, v26, v27

    add-float v25, v25, v26

    aget v26, v1, v12

    aget v27, v1, v5

    mul-float v26, v26, v27

    aget v27, v1, v19

    mul-float v26, v26, v27

    sub-float v25, v25, v26

    .line 413
    aget v26, v1, v14

    aget v27, v1, v15

    mul-float v26, v26, v27

    aget v27, v1, v7

    mul-float v26, v26, v27

    aget v27, v1, v6

    aget v28, v1, v5

    mul-float v27, v27, v28

    aget v28, v1, v7

    mul-float v27, v27, v28

    sub-float v26, v26, v27

    aget v27, v1, v6

    aget v28, v1, v8

    mul-float v27, v27, v28

    aget v28, v1, v11

    mul-float v27, v27, v28

    add-float v26, v26, v27

    aget v27, v1, v12

    aget v28, v1, v15

    mul-float v27, v27, v28

    aget v28, v1, v11

    mul-float v27, v27, v28

    sub-float v26, v26, v27

    aget v27, v1, v14

    aget v28, v1, v8

    mul-float v27, v27, v28

    aget v28, v1, v18

    mul-float v27, v27, v28

    sub-float v26, v26, v27

    aget v27, v1, v12

    aget v28, v1, v5

    mul-float v27, v27, v28

    aget v28, v1, v18

    mul-float v27, v27, v28

    add-float v26, v26, v27

    .line 415
    aget v27, v1, v10

    aget v28, v1, v18

    mul-float v27, v27, v28

    aget v28, v1, v2

    mul-float v27, v27, v28

    aget v28, v1, v15

    aget v29, v1, v4

    mul-float v28, v28, v29

    aget v29, v1, v2

    mul-float v28, v28, v29

    sub-float v27, v27, v28

    aget v28, v1, v15

    aget v29, v1, v7

    mul-float v28, v28, v29

    aget v29, v1, v9

    mul-float v28, v28, v29

    add-float v27, v27, v28

    aget v28, v1, v8

    aget v29, v1, v18

    mul-float v28, v28, v29

    aget v29, v1, v9

    mul-float v28, v28, v29

    sub-float v27, v27, v28

    aget v28, v1, v10

    aget v29, v1, v7

    mul-float v28, v28, v29

    aget v29, v1, v19

    mul-float v28, v28, v29

    sub-float v27, v27, v28

    aget v28, v1, v8

    aget v29, v1, v4

    mul-float v28, v28, v29

    aget v29, v1, v19

    mul-float v28, v28, v29

    add-float v27, v27, v28

    .line 417
    aget v28, v1, v6

    aget v29, v1, v4

    mul-float v28, v28, v29

    aget v29, v1, v2

    mul-float v28, v28, v29

    aget v29, v1, v16

    aget v30, v1, v18

    mul-float v29, v29, v30

    aget v30, v1, v2

    mul-float v29, v29, v30

    sub-float v28, v28, v29

    aget v29, v1, v6

    aget v30, v1, v7

    mul-float v29, v29, v30

    aget v30, v1, v9

    mul-float v29, v29, v30

    sub-float v28, v28, v29

    aget v29, v1, v12

    aget v30, v1, v18

    mul-float v29, v29, v30

    aget v30, v1, v9

    mul-float v29, v29, v30

    add-float v28, v28, v29

    aget v29, v1, v16

    aget v30, v1, v7

    mul-float v29, v29, v30

    aget v30, v1, v19

    mul-float v29, v29, v30

    add-float v28, v28, v29

    aget v29, v1, v12

    aget v30, v1, v4

    mul-float v29, v29, v30

    aget v30, v1, v19

    mul-float v29, v29, v30

    sub-float v28, v28, v29

    .line 419
    aget v29, v1, v16

    aget v30, v1, v15

    mul-float v29, v29, v30

    aget v30, v1, v2

    mul-float v29, v29, v30

    aget v30, v1, v6

    aget v31, v1, v10

    mul-float v30, v30, v31

    aget v31, v1, v2

    mul-float v30, v30, v31

    sub-float v29, v29, v30

    aget v30, v1, v6

    aget v31, v1, v8

    mul-float v30, v30, v31

    aget v31, v1, v9

    mul-float v30, v30, v31

    add-float v29, v29, v30

    aget v30, v1, v12

    aget v31, v1, v15

    mul-float v30, v30, v31

    aget v31, v1, v9

    mul-float v30, v30, v31

    sub-float v29, v29, v30

    aget v30, v1, v16

    aget v31, v1, v8

    mul-float v30, v30, v31

    aget v31, v1, v19

    mul-float v30, v30, v31

    sub-float v29, v29, v30

    aget v30, v1, v12

    aget v31, v1, v10

    mul-float v30, v30, v31

    aget v31, v1, v19

    mul-float v30, v30, v31

    add-float v29, v29, v30

    .line 421
    aget v30, v1, v6

    aget v31, v1, v10

    mul-float v30, v30, v31

    aget v31, v1, v7

    mul-float v30, v30, v31

    aget v31, v1, v16

    aget v32, v1, v15

    mul-float v31, v31, v32

    aget v32, v1, v7

    mul-float v31, v31, v32

    sub-float v30, v30, v31

    aget v31, v1, v6

    aget v32, v1, v8

    mul-float v31, v31, v32

    aget v32, v1, v4

    mul-float v31, v31, v32

    sub-float v30, v30, v31

    aget v31, v1, v12

    aget v32, v1, v15

    mul-float v31, v31, v32

    aget v32, v1, v4

    mul-float v31, v31, v32

    add-float v30, v30, v31

    aget v31, v1, v16

    aget v32, v1, v8

    mul-float v31, v31, v32

    aget v32, v1, v18

    mul-float v31, v31, v32

    add-float v30, v30, v31

    aget v31, v1, v12

    aget v32, v1, v10

    mul-float v31, v31, v32

    aget v32, v1, v18

    mul-float v31, v31, v32

    sub-float v30, v30, v31

    .line 423
    aget v31, v1, v5

    aget v32, v1, v4

    mul-float v31, v31, v32

    aget v32, v1, v2

    mul-float v31, v31, v32

    aget v32, v1, v10

    aget v33, v1, v11

    mul-float v32, v32, v33

    aget v33, v1, v2

    mul-float v32, v32, v33

    sub-float v31, v31, v32

    aget v32, v1, v5

    aget v33, v1, v7

    mul-float v32, v32, v33

    aget v33, v1, v9

    mul-float v32, v32, v33

    sub-float v31, v31, v32

    aget v32, v1, v8

    aget v33, v1, v11

    mul-float v32, v32, v33

    aget v33, v1, v9

    mul-float v32, v32, v33

    add-float v31, v31, v32

    aget v32, v1, v10

    aget v33, v1, v7

    mul-float v32, v32, v33

    aget v33, v1, v13

    mul-float v32, v32, v33

    add-float v31, v31, v32

    aget v32, v1, v8

    aget v33, v1, v4

    mul-float v32, v32, v33

    aget v33, v1, v13

    mul-float v32, v32, v33

    sub-float v31, v31, v32

    .line 425
    aget v32, v1, v16

    aget v33, v1, v11

    mul-float v32, v32, v33

    aget v33, v1, v2

    mul-float v32, v32, v33

    aget v33, v1, v14

    aget v34, v1, v4

    mul-float v33, v33, v34

    aget v34, v1, v2

    mul-float v33, v33, v34

    sub-float v32, v32, v33

    aget v33, v1, v14

    aget v34, v1, v7

    mul-float v33, v33, v34

    aget v34, v1, v9

    mul-float v33, v33, v34

    add-float v32, v32, v33

    aget v33, v1, v12

    aget v34, v1, v11

    mul-float v33, v33, v34

    aget v34, v1, v9

    mul-float v33, v33, v34

    sub-float v32, v32, v33

    aget v33, v1, v16

    aget v34, v1, v7

    mul-float v33, v33, v34

    aget v34, v1, v13

    mul-float v33, v33, v34

    sub-float v32, v32, v33

    aget v33, v1, v12

    aget v34, v1, v4

    mul-float v33, v33, v34

    aget v34, v1, v13

    mul-float v33, v33, v34

    add-float v32, v32, v33

    .line 427
    aget v33, v1, v14

    aget v34, v1, v10

    mul-float v33, v33, v34

    aget v34, v1, v2

    mul-float v33, v33, v34

    aget v34, v1, v16

    aget v35, v1, v5

    mul-float v34, v34, v35

    aget v35, v1, v2

    mul-float v34, v34, v35

    sub-float v33, v33, v34

    aget v34, v1, v14

    aget v35, v1, v8

    mul-float v34, v34, v35

    aget v35, v1, v9

    mul-float v34, v34, v35

    sub-float v33, v33, v34

    aget v34, v1, v12

    aget v35, v1, v5

    mul-float v34, v34, v35

    aget v35, v1, v9

    mul-float v34, v34, v35

    add-float v33, v33, v34

    aget v34, v1, v16

    aget v35, v1, v8

    mul-float v34, v34, v35

    aget v35, v1, v13

    mul-float v34, v34, v35

    add-float v33, v33, v34

    aget v34, v1, v12

    aget v35, v1, v10

    mul-float v34, v34, v35

    aget v35, v1, v13

    mul-float v34, v34, v35

    sub-float v33, v33, v34

    .line 429
    aget v34, v1, v16

    aget v35, v1, v5

    mul-float v34, v34, v35

    aget v35, v1, v7

    mul-float v34, v34, v35

    aget v35, v1, v14

    aget v36, v1, v10

    mul-float v35, v35, v36

    aget v36, v1, v7

    mul-float v35, v35, v36

    sub-float v34, v34, v35

    aget v35, v1, v14

    aget v36, v1, v8

    mul-float v35, v35, v36

    aget v36, v1, v4

    mul-float v35, v35, v36

    add-float v34, v34, v35

    aget v35, v1, v12

    aget v36, v1, v5

    mul-float v35, v35, v36

    aget v36, v1, v4

    mul-float v35, v35, v36

    sub-float v34, v34, v35

    aget v35, v1, v16

    aget v36, v1, v8

    mul-float v35, v35, v36

    aget v36, v1, v11

    mul-float v35, v35, v36

    sub-float v34, v34, v35

    aget v35, v1, v12

    aget v36, v1, v10

    mul-float v35, v35, v36

    aget v36, v1, v11

    mul-float v35, v35, v36

    add-float v34, v34, v35

    const/high16 v35, 0x3f800000    # 1.0f

    div-float v35, v35, v3

    mul-float v17, v17, v35

    .line 432
    aput v17, v1, v12

    mul-float v23, v23, v35

    .line 433
    aput v23, v1, v8

    mul-float v27, v27, v35

    .line 434
    aput v27, v1, v7

    mul-float v31, v31, v35

    .line 435
    aput v31, v1, v2

    mul-float v20, v20, v35

    .line 436
    aput v20, v1, v16

    mul-float v24, v24, v35

    .line 437
    aput v24, v1, v10

    mul-float v28, v28, v35

    .line 438
    aput v28, v1, v4

    mul-float v32, v32, v35

    .line 439
    aput v32, v1, v9

    mul-float v21, v21, v35

    .line 440
    aput v21, v1, v14

    mul-float v25, v25, v35

    .line 441
    aput v25, v1, v5

    mul-float v29, v29, v35

    .line 442
    aput v29, v1, v11

    mul-float v33, v33, v35

    .line 443
    aput v33, v1, v13

    mul-float v22, v22, v35

    .line 444
    aput v22, v1, v6

    mul-float v26, v26, v35

    .line 445
    aput v26, v1, v15

    mul-float v30, v30, v35

    .line 446
    aput v30, v1, v18

    mul-float v34, v34, v35

    .line 447
    aput v34, v1, v19

    return-object v0

    .line 398
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "non-invertible matrix"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public lerp(Lcom/badlogic/gdx/math/Matrix4;F)Lcom/badlogic/gdx/math/Matrix4;
    .locals 4

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 853
    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v2, v1, v0

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, p2

    mul-float v2, v2, v3

    iget-object v3, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v3, v3, v0

    mul-float v3, v3, p2

    add-float/2addr v2, v3

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;
    .locals 1

    .line 321
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    iget-object p1, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    invoke-static {v0, p1}, Lcom/badlogic/gdx/math/Matrix4;->mul([F[F)V

    return-object p0
.end method

.method public mulLeft(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;
    .locals 2

    .line 334
    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->tmpMat:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    .line 335
    iget-object p1, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    invoke-static {p1, v1}, Lcom/badlogic/gdx/math/Matrix4;->mul([F[F)V

    .line 336
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object p1

    return-object p1
.end method

.method public rotate(FFFF)Lcom/badlogic/gdx/math/Matrix4;
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p4, v0

    if-nez v0, :cond_0

    return-object p0

    .line 1475
    :cond_0
    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->quat:Lcom/badlogic/gdx/math/Quaternion;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/math/Quaternion;->setFromAxis(FFFF)Lcom/badlogic/gdx/math/Quaternion;

    .line 1476
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/math/Matrix4;->rotate(Lcom/badlogic/gdx/math/Quaternion;)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object p1

    return-object p1
.end method

.method public rotate(Lcom/badlogic/gdx/math/Quaternion;)Lcom/badlogic/gdx/math/Matrix4;
    .locals 32

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1497
    iget v2, v1, Lcom/badlogic/gdx/math/Quaternion;->x:F

    iget v3, v1, Lcom/badlogic/gdx/math/Quaternion;->y:F

    iget v4, v1, Lcom/badlogic/gdx/math/Quaternion;->z:F

    iget v1, v1, Lcom/badlogic/gdx/math/Quaternion;->w:F

    mul-float v5, v2, v2

    mul-float v6, v2, v3

    mul-float v7, v2, v4

    mul-float v2, v2, v1

    mul-float v8, v3, v3

    mul-float v9, v3, v4

    mul-float v3, v3, v1

    mul-float v10, v4, v4

    mul-float v4, v4, v1

    add-float v1, v8, v10

    const/high16 v11, 0x40000000    # 2.0f

    mul-float v1, v1, v11

    const/high16 v12, 0x3f800000    # 1.0f

    sub-float v1, v12, v1

    sub-float v13, v6, v4

    mul-float v13, v13, v11

    add-float v14, v7, v3

    mul-float v14, v14, v11

    add-float/2addr v6, v4

    mul-float v6, v6, v11

    add-float/2addr v10, v5

    mul-float v10, v10, v11

    sub-float v4, v12, v10

    sub-float v10, v9, v2

    mul-float v10, v10, v11

    sub-float/2addr v7, v3

    mul-float v7, v7, v11

    add-float/2addr v9, v2

    mul-float v9, v9, v11

    add-float/2addr v5, v8

    mul-float v5, v5, v11

    sub-float/2addr v12, v5

    .line 1517
    iget-object v2, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v3, 0x0

    aget v5, v2, v3

    mul-float v5, v5, v1

    const/4 v8, 0x4

    aget v11, v2, v8

    mul-float v11, v11, v6

    add-float/2addr v5, v11

    const/16 v11, 0x8

    aget v15, v2, v11

    mul-float v15, v15, v7

    add-float/2addr v5, v15

    .line 1518
    aget v15, v2, v3

    mul-float v15, v15, v13

    aget v16, v2, v8

    mul-float v16, v16, v4

    add-float v15, v15, v16

    aget v16, v2, v11

    mul-float v16, v16, v9

    add-float v15, v15, v16

    .line 1519
    aget v16, v2, v3

    mul-float v16, v16, v14

    aget v17, v2, v8

    mul-float v17, v17, v10

    add-float v16, v16, v17

    aget v17, v2, v11

    mul-float v17, v17, v12

    add-float v16, v16, v17

    const/16 v17, 0x1

    .line 1520
    aget v18, v2, v17

    mul-float v18, v18, v1

    const/16 v19, 0x5

    aget v20, v2, v19

    mul-float v20, v20, v6

    add-float v18, v18, v20

    const/16 v20, 0x9

    aget v21, v2, v20

    mul-float v21, v21, v7

    add-float v18, v18, v21

    .line 1521
    aget v21, v2, v17

    mul-float v21, v21, v13

    aget v22, v2, v19

    mul-float v22, v22, v4

    add-float v21, v21, v22

    aget v22, v2, v20

    mul-float v22, v22, v9

    add-float v21, v21, v22

    .line 1522
    aget v22, v2, v17

    mul-float v22, v22, v14

    aget v23, v2, v19

    mul-float v23, v23, v10

    add-float v22, v22, v23

    aget v23, v2, v20

    mul-float v23, v23, v12

    add-float v22, v22, v23

    const/16 v23, 0x2

    .line 1523
    aget v24, v2, v23

    mul-float v24, v24, v1

    const/16 v25, 0x6

    aget v26, v2, v25

    mul-float v26, v26, v6

    add-float v24, v24, v26

    const/16 v26, 0xa

    aget v27, v2, v26

    mul-float v27, v27, v7

    add-float v24, v24, v27

    .line 1524
    aget v27, v2, v23

    mul-float v27, v27, v13

    aget v28, v2, v25

    mul-float v28, v28, v4

    add-float v27, v27, v28

    aget v28, v2, v26

    mul-float v28, v28, v9

    add-float v27, v27, v28

    .line 1525
    aget v28, v2, v23

    mul-float v28, v28, v14

    aget v29, v2, v25

    mul-float v29, v29, v10

    add-float v28, v28, v29

    aget v29, v2, v26

    mul-float v29, v29, v12

    add-float v28, v28, v29

    const/16 v29, 0x3

    .line 1526
    aget v30, v2, v29

    mul-float v30, v30, v1

    const/4 v1, 0x7

    aget v31, v2, v1

    mul-float v31, v31, v6

    add-float v30, v30, v31

    const/16 v6, 0xb

    aget v31, v2, v6

    mul-float v31, v31, v7

    add-float v30, v30, v31

    .line 1527
    aget v7, v2, v29

    mul-float v7, v7, v13

    aget v13, v2, v1

    mul-float v13, v13, v4

    add-float/2addr v7, v13

    aget v4, v2, v6

    mul-float v4, v4, v9

    add-float/2addr v7, v4

    .line 1528
    aget v4, v2, v29

    mul-float v4, v4, v14

    aget v9, v2, v1

    mul-float v9, v9, v10

    add-float/2addr v4, v9

    aget v9, v2, v6

    mul-float v9, v9, v12

    add-float/2addr v4, v9

    .line 1529
    aput v5, v2, v3

    .line 1530
    aput v18, v2, v17

    .line 1531
    aput v24, v2, v23

    .line 1532
    aput v30, v2, v29

    .line 1533
    aput v15, v2, v8

    .line 1534
    aput v21, v2, v19

    .line 1535
    aput v27, v2, v25

    .line 1536
    aput v7, v2, v1

    .line 1537
    aput v16, v2, v11

    .line 1538
    aput v22, v2, v20

    .line 1539
    aput v28, v2, v26

    .line 1540
    aput v4, v2, v6

    return-object v0
.end method

.method public rotate(Lcom/badlogic/gdx/math/Vector3;F)Lcom/badlogic/gdx/math/Matrix4;
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-nez v0, :cond_0

    return-object p0

    .line 1451
    :cond_0
    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->quat:Lcom/badlogic/gdx/math/Quaternion;

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/math/Quaternion;->set(Lcom/badlogic/gdx/math/Vector3;F)Lcom/badlogic/gdx/math/Quaternion;

    .line 1452
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/math/Matrix4;->rotate(Lcom/badlogic/gdx/math/Quaternion;)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object p1

    return-object p1
.end method

.method public rotate(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Matrix4;
    .locals 1

    .line 1549
    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->quat:Lcom/badlogic/gdx/math/Quaternion;

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/math/Quaternion;->setFromCross(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Quaternion;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Matrix4;->rotate(Lcom/badlogic/gdx/math/Quaternion;)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object p1

    return-object p1
.end method

.method public rotateRad(FFFF)Lcom/badlogic/gdx/math/Matrix4;
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p4, v0

    if-nez v0, :cond_0

    return-object p0

    .line 1488
    :cond_0
    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->quat:Lcom/badlogic/gdx/math/Quaternion;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/math/Quaternion;->setFromAxisRad(FFFF)Lcom/badlogic/gdx/math/Quaternion;

    .line 1489
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/math/Matrix4;->rotate(Lcom/badlogic/gdx/math/Quaternion;)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object p1

    return-object p1
.end method

.method public rotateRad(Lcom/badlogic/gdx/math/Vector3;F)Lcom/badlogic/gdx/math/Matrix4;
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-nez v0, :cond_0

    return-object p0

    .line 1462
    :cond_0
    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->quat:Lcom/badlogic/gdx/math/Quaternion;

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/math/Quaternion;->setFromAxisRad(Lcom/badlogic/gdx/math/Vector3;F)Lcom/badlogic/gdx/math/Quaternion;

    .line 1463
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/math/Matrix4;->rotate(Lcom/badlogic/gdx/math/Quaternion;)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object p1

    return-object p1
.end method

.method public rotateTowardDirection(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Matrix4;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1557
    sget-object v2, Lcom/badlogic/gdx/math/Matrix4;->l_vez:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    .line 1558
    sget-object v3, Lcom/badlogic/gdx/math/Matrix4;->l_vex:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v3, v1}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v1

    move-object/from16 v4, p2

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/math/Vector3;->crs(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    .line 1559
    sget-object v1, Lcom/badlogic/gdx/math/Matrix4;->l_vey:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/badlogic/gdx/math/Vector3;->crs(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    .line 1560
    iget-object v4, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    iget v6, v3, Lcom/badlogic/gdx/math/Vector3;->x:F

    mul-float v4, v4, v6

    iget-object v6, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v7, 0x4

    aget v6, v6, v7

    iget v8, v3, Lcom/badlogic/gdx/math/Vector3;->y:F

    mul-float v6, v6, v8

    add-float/2addr v4, v6

    iget-object v6, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v8, 0x8

    aget v6, v6, v8

    iget v9, v3, Lcom/badlogic/gdx/math/Vector3;->z:F

    mul-float v6, v6, v9

    add-float/2addr v4, v6

    .line 1561
    iget-object v6, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v6, v6, v5

    iget v9, v1, Lcom/badlogic/gdx/math/Vector3;->x:F

    mul-float v6, v6, v9

    iget-object v9, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v9, v9, v7

    iget v10, v1, Lcom/badlogic/gdx/math/Vector3;->y:F

    mul-float v9, v9, v10

    add-float/2addr v6, v9

    iget-object v9, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v9, v9, v8

    iget v10, v1, Lcom/badlogic/gdx/math/Vector3;->z:F

    mul-float v9, v9, v10

    add-float/2addr v6, v9

    .line 1562
    iget-object v9, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v9, v9, v5

    iget v10, v2, Lcom/badlogic/gdx/math/Vector3;->x:F

    neg-float v10, v10

    mul-float v9, v9, v10

    iget-object v10, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v10, v10, v7

    iget v11, v2, Lcom/badlogic/gdx/math/Vector3;->y:F

    neg-float v11, v11

    mul-float v10, v10, v11

    add-float/2addr v9, v10

    iget-object v10, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v10, v10, v8

    iget v11, v2, Lcom/badlogic/gdx/math/Vector3;->z:F

    neg-float v11, v11

    mul-float v10, v10, v11

    add-float/2addr v9, v10

    .line 1563
    iget-object v10, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v11, 0x1

    aget v10, v10, v11

    iget v12, v3, Lcom/badlogic/gdx/math/Vector3;->x:F

    mul-float v10, v10, v12

    iget-object v12, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v13, 0x5

    aget v12, v12, v13

    iget v14, v3, Lcom/badlogic/gdx/math/Vector3;->y:F

    mul-float v12, v12, v14

    add-float/2addr v10, v12

    iget-object v12, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v14, 0x9

    aget v12, v12, v14

    iget v15, v3, Lcom/badlogic/gdx/math/Vector3;->z:F

    mul-float v12, v12, v15

    add-float/2addr v10, v12

    .line 1564
    iget-object v12, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v12, v12, v11

    iget v15, v1, Lcom/badlogic/gdx/math/Vector3;->x:F

    mul-float v12, v12, v15

    iget-object v15, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v15, v15, v13

    iget v8, v1, Lcom/badlogic/gdx/math/Vector3;->y:F

    mul-float v15, v15, v8

    add-float/2addr v12, v15

    iget-object v8, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v8, v8, v14

    iget v15, v1, Lcom/badlogic/gdx/math/Vector3;->z:F

    mul-float v8, v8, v15

    add-float/2addr v12, v8

    .line 1565
    iget-object v8, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v8, v8, v11

    iget v15, v2, Lcom/badlogic/gdx/math/Vector3;->x:F

    neg-float v15, v15

    mul-float v8, v8, v15

    iget-object v15, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v15, v15, v13

    iget v13, v2, Lcom/badlogic/gdx/math/Vector3;->y:F

    neg-float v13, v13

    mul-float v15, v15, v13

    add-float/2addr v8, v15

    iget-object v13, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v13, v13, v14

    iget v15, v2, Lcom/badlogic/gdx/math/Vector3;->z:F

    neg-float v15, v15

    mul-float v13, v13, v15

    add-float/2addr v8, v13

    .line 1566
    iget-object v13, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v15, 0x2

    aget v13, v13, v15

    iget v14, v3, Lcom/badlogic/gdx/math/Vector3;->x:F

    mul-float v13, v13, v14

    iget-object v14, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v16, 0x6

    aget v14, v14, v16

    iget v7, v3, Lcom/badlogic/gdx/math/Vector3;->y:F

    mul-float v14, v14, v7

    add-float/2addr v13, v14

    iget-object v7, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v14, 0xa

    aget v7, v7, v14

    iget v11, v3, Lcom/badlogic/gdx/math/Vector3;->z:F

    mul-float v7, v7, v11

    add-float/2addr v13, v7

    .line 1567
    iget-object v7, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v7, v7, v15

    iget v11, v1, Lcom/badlogic/gdx/math/Vector3;->x:F

    mul-float v7, v7, v11

    iget-object v11, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v11, v11, v16

    iget v5, v1, Lcom/badlogic/gdx/math/Vector3;->y:F

    mul-float v11, v11, v5

    add-float/2addr v7, v11

    iget-object v5, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v5, v5, v14

    iget v11, v1, Lcom/badlogic/gdx/math/Vector3;->z:F

    mul-float v5, v5, v11

    add-float/2addr v7, v5

    .line 1568
    iget-object v5, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v5, v5, v15

    iget v11, v2, Lcom/badlogic/gdx/math/Vector3;->x:F

    neg-float v11, v11

    mul-float v5, v5, v11

    iget-object v11, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v11, v11, v16

    iget v15, v2, Lcom/badlogic/gdx/math/Vector3;->y:F

    neg-float v15, v15

    mul-float v11, v11, v15

    add-float/2addr v5, v11

    iget-object v11, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v11, v11, v14

    iget v15, v2, Lcom/badlogic/gdx/math/Vector3;->z:F

    neg-float v15, v15

    mul-float v11, v11, v15

    add-float/2addr v5, v11

    .line 1569
    iget-object v11, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v15, 0x3

    aget v11, v11, v15

    iget v14, v3, Lcom/badlogic/gdx/math/Vector3;->x:F

    mul-float v11, v11, v14

    iget-object v14, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v17, 0x7

    aget v14, v14, v17

    iget v15, v3, Lcom/badlogic/gdx/math/Vector3;->y:F

    mul-float v14, v14, v15

    add-float/2addr v11, v14

    iget-object v14, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v15, 0xb

    aget v14, v14, v15

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->z:F

    mul-float v14, v14, v3

    add-float/2addr v11, v14

    .line 1570
    iget-object v3, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v14, 0x3

    aget v3, v3, v14

    iget v14, v1, Lcom/badlogic/gdx/math/Vector3;->x:F

    mul-float v3, v3, v14

    iget-object v14, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v14, v14, v17

    iget v15, v1, Lcom/badlogic/gdx/math/Vector3;->y:F

    mul-float v14, v14, v15

    add-float/2addr v3, v14

    iget-object v14, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v15, 0xb

    aget v14, v14, v15

    iget v1, v1, Lcom/badlogic/gdx/math/Vector3;->z:F

    mul-float v14, v14, v1

    add-float/2addr v3, v14

    .line 1571
    iget-object v1, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v14, 0x3

    aget v1, v1, v14

    iget v14, v2, Lcom/badlogic/gdx/math/Vector3;->x:F

    neg-float v14, v14

    mul-float v1, v1, v14

    iget-object v14, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v14, v14, v17

    iget v15, v2, Lcom/badlogic/gdx/math/Vector3;->y:F

    neg-float v15, v15

    mul-float v14, v14, v15

    add-float/2addr v1, v14

    iget-object v14, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v15, 0xb

    aget v14, v14, v15

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->z:F

    neg-float v2, v2

    mul-float v14, v14, v2

    add-float/2addr v1, v14

    .line 1572
    iget-object v2, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v14, 0x0

    aput v4, v2, v14

    const/4 v4, 0x1

    .line 1573
    aput v10, v2, v4

    const/4 v4, 0x2

    .line 1574
    aput v13, v2, v4

    const/4 v4, 0x3

    .line 1575
    aput v11, v2, v4

    const/4 v4, 0x4

    .line 1576
    aput v6, v2, v4

    const/4 v4, 0x5

    .line 1577
    aput v12, v2, v4

    .line 1578
    aput v7, v2, v16

    .line 1579
    aput v3, v2, v17

    const/16 v3, 0x8

    .line 1580
    aput v9, v2, v3

    const/16 v3, 0x9

    .line 1581
    aput v8, v2, v3

    const/16 v3, 0xa

    .line 1582
    aput v5, v2, v3

    const/16 v3, 0xb

    .line 1583
    aput v1, v2, v3

    return-object v0
.end method

.method public rotateTowardTarget(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Matrix4;
    .locals 5

    .line 1592
    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->tmpVec:Lcom/badlogic/gdx/math/Vector3;

    iget v1, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0xc

    aget v2, v2, v3

    sub-float/2addr v1, v2

    iget v2, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v4, 0xd

    aget v3, v3, v4

    sub-float/2addr v2, v3

    iget p1, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v4, 0xe

    aget v3, v3, v4

    sub-float/2addr p1, v3

    invoke-virtual {v0, v1, v2, p1}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 1593
    invoke-virtual {p0, v0, p2}, Lcom/badlogic/gdx/math/Matrix4;->rotateTowardDirection(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object p1

    return-object p1
.end method

.method public scale(FFF)Lcom/badlogic/gdx/math/Matrix4;
    .locals 3

    .line 1603
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x0

    aget v2, v0, v1

    mul-float v2, v2, p1

    aput v2, v0, v1

    const/4 v1, 0x4

    .line 1604
    aget v2, v0, v1

    mul-float v2, v2, p2

    aput v2, v0, v1

    const/16 v1, 0x8

    .line 1605
    aget v2, v0, v1

    mul-float v2, v2, p3

    aput v2, v0, v1

    const/4 v1, 0x1

    .line 1606
    aget v2, v0, v1

    mul-float v2, v2, p1

    aput v2, v0, v1

    const/4 v1, 0x5

    .line 1607
    aget v2, v0, v1

    mul-float v2, v2, p2

    aput v2, v0, v1

    const/16 v1, 0x9

    .line 1608
    aget v2, v0, v1

    mul-float v2, v2, p3

    aput v2, v0, v1

    const/4 v1, 0x2

    .line 1609
    aget v2, v0, v1

    mul-float v2, v2, p1

    aput v2, v0, v1

    const/4 v1, 0x6

    .line 1610
    aget v2, v0, v1

    mul-float v2, v2, p2

    aput v2, v0, v1

    const/16 v1, 0xa

    .line 1611
    aget v2, v0, v1

    mul-float v2, v2, p3

    aput v2, v0, v1

    const/4 v1, 0x3

    .line 1612
    aget v2, v0, v1

    mul-float v2, v2, p1

    aput v2, v0, v1

    const/4 p1, 0x7

    .line 1613
    aget v1, v0, p1

    mul-float v1, v1, p2

    aput v1, v0, p1

    const/16 p1, 0xb

    .line 1614
    aget p2, v0, p1

    mul-float p2, p2, p3

    aput p2, v0, p1

    return-object p0
.end method

.method public scl(F)Lcom/badlogic/gdx/math/Matrix4;
    .locals 3

    .line 1034
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x0

    aget v2, v0, v1

    mul-float v2, v2, p1

    aput v2, v0, v1

    const/4 v1, 0x5

    .line 1035
    aget v2, v0, v1

    mul-float v2, v2, p1

    aput v2, v0, v1

    const/16 v1, 0xa

    .line 1036
    aget v2, v0, v1

    mul-float v2, v2, p1

    aput v2, v0, v1

    return-object p0
.end method

.method public scl(FFF)Lcom/badlogic/gdx/math/Matrix4;
    .locals 3

    .line 1027
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x0

    aget v2, v0, v1

    mul-float v2, v2, p1

    aput v2, v0, v1

    const/4 p1, 0x5

    .line 1028
    aget v1, v0, p1

    mul-float v1, v1, p2

    aput v1, v0, p1

    const/16 p1, 0xa

    .line 1029
    aget p2, v0, p1

    mul-float p2, p2, p3

    aput p2, v0, p1

    return-object p0
.end method

.method public scl(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Matrix4;
    .locals 4

    .line 1020
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x0

    aget v2, v0, v1

    iget v3, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    mul-float v2, v2, v3

    aput v2, v0, v1

    .line 1021
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x5

    aget v2, v0, v1

    iget v3, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    mul-float v2, v2, v3

    aput v2, v0, v1

    .line 1022
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xa

    aget v2, v0, v1

    iget p1, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    mul-float v2, v2, p1

    aput v2, v0, v1

    return-object p0
.end method

.method public set(FFFF)Lcom/badlogic/gdx/math/Matrix4;
    .locals 8

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    .line 154
    invoke-virtual/range {v0 .. v7}, Lcom/badlogic/gdx/math/Matrix4;->set(FFFFFFF)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object p1

    return-object p1
.end method

.method public set(FFFFFFF)Lcom/badlogic/gdx/math/Matrix4;
    .locals 14

    move-object v0, p0

    const/high16 v1, 0x40000000    # 2.0f

    mul-float v2, p4, v1

    mul-float v3, p5, v1

    mul-float v1, v1, p6

    mul-float v4, p7, v2

    mul-float v5, p7, v3

    mul-float v6, p7, v1

    mul-float v2, v2, p4

    mul-float v7, p4, v3

    mul-float v8, p4, v1

    mul-float v3, v3, p5

    mul-float v9, p5, v1

    mul-float v1, v1, p6

    .line 181
    iget-object v10, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    add-float v11, v3, v1

    const/high16 v12, 0x3f800000    # 1.0f

    sub-float v11, v12, v11

    const/4 v13, 0x0

    aput v11, v10, v13

    sub-float v11, v7, v6

    const/4 v13, 0x4

    .line 182
    aput v11, v10, v13

    add-float v11, v8, v5

    const/16 v13, 0x8

    .line 183
    aput v11, v10, v13

    const/16 v11, 0xc

    .line 184
    aput p1, v10, v11

    add-float/2addr v7, v6

    const/4 v6, 0x1

    .line 186
    aput v7, v10, v6

    add-float/2addr v1, v2

    sub-float v1, v12, v1

    const/4 v6, 0x5

    .line 187
    aput v1, v10, v6

    sub-float v1, v9, v4

    const/16 v6, 0x9

    .line 188
    aput v1, v10, v6

    const/16 v1, 0xd

    .line 189
    aput p2, v10, v1

    sub-float/2addr v8, v5

    const/4 v1, 0x2

    .line 191
    aput v8, v10, v1

    add-float/2addr v9, v4

    const/4 v1, 0x6

    .line 192
    aput v9, v10, v1

    add-float/2addr v2, v3

    sub-float v1, v12, v2

    const/16 v2, 0xa

    .line 193
    aput v1, v10, v2

    const/16 v1, 0xe

    .line 194
    aput p3, v10, v1

    const/4 v1, 0x3

    const/4 v2, 0x0

    .line 196
    aput v2, v10, v1

    const/4 v1, 0x7

    .line 197
    aput v2, v10, v1

    const/16 v1, 0xb

    .line 198
    aput v2, v10, v1

    const/16 v1, 0xf

    .line 199
    aput v12, v10, v1

    return-object v0
.end method

.method public set(FFFFFFFFFF)Lcom/badlogic/gdx/math/Matrix4;
    .locals 14

    move-object v0, p0

    const/high16 v1, 0x40000000    # 2.0f

    mul-float v2, p4, v1

    mul-float v3, p5, v1

    mul-float v1, v1, p6

    mul-float v4, p7, v2

    mul-float v5, p7, v3

    mul-float v6, p7, v1

    mul-float v2, v2, p4

    mul-float v7, p4, v3

    mul-float v8, p4, v1

    mul-float v3, v3, p5

    mul-float v9, p5, v1

    mul-float v1, v1, p6

    .line 232
    iget-object v10, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    add-float v11, v3, v1

    const/high16 v12, 0x3f800000    # 1.0f

    sub-float v11, v12, v11

    mul-float v11, v11, p8

    const/4 v13, 0x0

    aput v11, v10, v13

    sub-float v11, v7, v6

    mul-float v11, v11, p9

    const/4 v13, 0x4

    .line 233
    aput v11, v10, v13

    add-float v11, v8, v5

    mul-float v11, v11, p10

    const/16 v13, 0x8

    .line 234
    aput v11, v10, v13

    const/16 v11, 0xc

    .line 235
    aput p1, v10, v11

    add-float/2addr v7, v6

    mul-float v6, p8, v7

    const/4 v7, 0x1

    .line 237
    aput v6, v10, v7

    add-float/2addr v1, v2

    sub-float v1, v12, v1

    mul-float v1, v1, p9

    const/4 v6, 0x5

    .line 238
    aput v1, v10, v6

    sub-float v1, v9, v4

    mul-float v1, v1, p10

    const/16 v6, 0x9

    .line 239
    aput v1, v10, v6

    const/16 v1, 0xd

    .line 240
    aput p2, v10, v1

    sub-float/2addr v8, v5

    mul-float v1, p8, v8

    const/4 v5, 0x2

    .line 242
    aput v1, v10, v5

    add-float/2addr v9, v4

    mul-float v1, p9, v9

    const/4 v4, 0x6

    .line 243
    aput v1, v10, v4

    add-float/2addr v2, v3

    sub-float v1, v12, v2

    mul-float v1, v1, p10

    const/16 v2, 0xa

    .line 244
    aput v1, v10, v2

    const/16 v1, 0xe

    .line 245
    aput p3, v10, v1

    const/4 v1, 0x3

    const/4 v2, 0x0

    .line 247
    aput v2, v10, v1

    const/4 v1, 0x7

    .line 248
    aput v2, v10, v1

    const/16 v1, 0xb

    .line 249
    aput v2, v10, v1

    const/16 v1, 0xf

    .line 250
    aput v12, v10, v1

    return-object v0
.end method

.method public set(Lcom/badlogic/gdx/math/Affine2;)Lcom/badlogic/gdx/math/Matrix4;
    .locals 5

    .line 959
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    iget v1, p1, Lcom/badlogic/gdx/math/Affine2;->m00:F

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 960
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    iget v1, p1, Lcom/badlogic/gdx/math/Affine2;->m10:F

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 961
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x2

    const/4 v2, 0x0

    aput v2, v0, v1

    const/4 v1, 0x3

    .line 962
    aput v2, v0, v1

    .line 963
    iget v1, p1, Lcom/badlogic/gdx/math/Affine2;->m01:F

    const/4 v3, 0x4

    aput v1, v0, v3

    .line 964
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    iget v1, p1, Lcom/badlogic/gdx/math/Affine2;->m11:F

    const/4 v3, 0x5

    aput v1, v0, v3

    .line 965
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x6

    aput v2, v0, v1

    const/4 v1, 0x7

    .line 966
    aput v2, v0, v1

    const/16 v1, 0x8

    .line 967
    aput v2, v0, v1

    const/16 v1, 0x9

    .line 968
    aput v2, v0, v1

    const/16 v1, 0xa

    const/high16 v3, 0x3f800000    # 1.0f

    .line 969
    aput v3, v0, v1

    const/16 v1, 0xb

    .line 970
    aput v2, v0, v1

    .line 971
    iget v1, p1, Lcom/badlogic/gdx/math/Affine2;->m02:F

    const/16 v4, 0xc

    aput v1, v0, v4

    .line 972
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    iget p1, p1, Lcom/badlogic/gdx/math/Affine2;->m12:F

    const/16 v1, 0xd

    aput p1, v0, v1

    .line 973
    iget-object p1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v0, 0xe

    aput v2, p1, v0

    const/16 v0, 0xf

    .line 974
    aput v3, p1, v0

    return-object p0
.end method

.method public set(Lcom/badlogic/gdx/math/Matrix3;)Lcom/badlogic/gdx/math/Matrix4;
    .locals 7

    .line 929
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    iget-object v1, p1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    aput v1, v0, v2

    .line 930
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    iget-object v1, p1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    aput v1, v0, v2

    .line 931
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    iget-object v1, p1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v2, 0x2

    aget v1, v1, v2

    aput v1, v0, v2

    .line 932
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x3

    const/4 v2, 0x0

    aput v2, v0, v1

    .line 933
    iget-object v3, p1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    aget v1, v3, v1

    const/4 v3, 0x4

    aput v1, v0, v3

    .line 934
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    iget-object v1, p1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    aget v1, v1, v3

    const/4 v3, 0x5

    aput v1, v0, v3

    .line 935
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    iget-object v1, p1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    aget v1, v1, v3

    const/4 v3, 0x6

    aput v1, v0, v3

    .line 936
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x7

    aput v2, v0, v1

    const/16 v4, 0x8

    .line 937
    aput v2, v0, v4

    const/16 v5, 0x9

    .line 938
    aput v2, v0, v5

    const/16 v5, 0xa

    const/high16 v6, 0x3f800000    # 1.0f

    .line 939
    aput v6, v0, v5

    const/16 v5, 0xb

    .line 940
    aput v2, v0, v5

    .line 941
    iget-object v5, p1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    aget v3, v5, v3

    const/16 v5, 0xc

    aput v3, v0, v5

    .line 942
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    iget-object v3, p1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    aget v1, v3, v1

    const/16 v3, 0xd

    aput v1, v0, v3

    .line 943
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xe

    aput v2, v0, v1

    .line 944
    iget-object p1, p1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    aget p1, p1, v4

    const/16 v1, 0xf

    aput p1, v0, v1

    return-object p0
.end method

.method public set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;
    .locals 0

    .line 125
    iget-object p1, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Matrix4;->set([F)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object p1

    return-object p1
.end method

.method public set(Lcom/badlogic/gdx/math/Quaternion;)Lcom/badlogic/gdx/math/Matrix4;
    .locals 3

    .line 143
    iget v0, p1, Lcom/badlogic/gdx/math/Quaternion;->x:F

    iget v1, p1, Lcom/badlogic/gdx/math/Quaternion;->y:F

    iget v2, p1, Lcom/badlogic/gdx/math/Quaternion;->z:F

    iget p1, p1, Lcom/badlogic/gdx/math/Quaternion;->w:F

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/badlogic/gdx/math/Matrix4;->set(FFFF)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object p1

    return-object p1
.end method

.method public set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Quaternion;)Lcom/badlogic/gdx/math/Matrix4;
    .locals 8

    .line 162
    iget v1, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v2, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v3, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget v4, p2, Lcom/badlogic/gdx/math/Quaternion;->x:F

    iget v5, p2, Lcom/badlogic/gdx/math/Quaternion;->y:F

    iget v6, p2, Lcom/badlogic/gdx/math/Quaternion;->z:F

    iget v7, p2, Lcom/badlogic/gdx/math/Quaternion;->w:F

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/badlogic/gdx/math/Matrix4;->set(FFFFFFF)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object p1

    return-object p1
.end method

.method public set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Quaternion;Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Matrix4;
    .locals 11

    .line 209
    iget v1, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v2, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v3, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget v4, p2, Lcom/badlogic/gdx/math/Quaternion;->x:F

    iget v5, p2, Lcom/badlogic/gdx/math/Quaternion;->y:F

    iget v6, p2, Lcom/badlogic/gdx/math/Quaternion;->z:F

    iget v7, p2, Lcom/badlogic/gdx/math/Quaternion;->w:F

    iget v8, p3, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v9, p3, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v10, p3, Lcom/badlogic/gdx/math/Vector3;->z:F

    move-object v0, p0

    invoke-virtual/range {v0 .. v10}, Lcom/badlogic/gdx/math/Matrix4;->set(FFFFFFFFFF)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object p1

    return-object p1
.end method

.method public set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Matrix4;
    .locals 3

    .line 261
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 262
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    const/4 v2, 0x4

    aput v1, v0, v2

    .line 263
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    iget p1, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    const/16 v1, 0x8

    aput p1, v0, v1

    .line 264
    iget-object p1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    iget v0, p2, Lcom/badlogic/gdx/math/Vector3;->x:F

    const/4 v1, 0x1

    aput v0, p1, v1

    .line 265
    iget-object p1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    iget v0, p2, Lcom/badlogic/gdx/math/Vector3;->y:F

    const/4 v1, 0x5

    aput v0, p1, v1

    .line 266
    iget-object p1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    iget p2, p2, Lcom/badlogic/gdx/math/Vector3;->z:F

    const/16 v0, 0x9

    aput p2, p1, v0

    .line 267
    iget-object p1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    iget p2, p3, Lcom/badlogic/gdx/math/Vector3;->x:F

    const/4 v0, 0x2

    aput p2, p1, v0

    .line 268
    iget-object p1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    iget p2, p3, Lcom/badlogic/gdx/math/Vector3;->y:F

    const/4 v0, 0x6

    aput p2, p1, v0

    .line 269
    iget-object p1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    iget p2, p3, Lcom/badlogic/gdx/math/Vector3;->z:F

    const/16 p3, 0xa

    aput p2, p1, p3

    .line 270
    iget-object p1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    iget p2, p4, Lcom/badlogic/gdx/math/Vector3;->x:F

    const/16 p3, 0xc

    aput p2, p1, p3

    .line 271
    iget-object p1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    iget p2, p4, Lcom/badlogic/gdx/math/Vector3;->y:F

    const/16 p3, 0xd

    aput p2, p1, p3

    .line 272
    iget-object p1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    iget p2, p4, Lcom/badlogic/gdx/math/Vector3;->z:F

    const/16 p3, 0xe

    aput p2, p1, p3

    .line 273
    iget-object p1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 p2, 0x3

    const/4 p3, 0x0

    aput p3, p1, p2

    const/4 p2, 0x7

    .line 274
    aput p3, p1, p2

    const/16 p2, 0xb

    .line 275
    aput p3, p1, p2

    const/16 p2, 0xf

    const/high16 p3, 0x3f800000    # 1.0f

    .line 276
    aput p3, p1, p2

    return-object p0
.end method

.method public set([F)Lcom/badlogic/gdx/math/Matrix4;
    .locals 3

    .line 135
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p0
.end method

.method public setAsAffine(Lcom/badlogic/gdx/math/Affine2;)Lcom/badlogic/gdx/math/Matrix4;
    .locals 3

    .line 990
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    iget v1, p1, Lcom/badlogic/gdx/math/Affine2;->m00:F

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 991
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    iget v1, p1, Lcom/badlogic/gdx/math/Affine2;->m10:F

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 992
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    iget v1, p1, Lcom/badlogic/gdx/math/Affine2;->m01:F

    const/4 v2, 0x4

    aput v1, v0, v2

    .line 993
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    iget v1, p1, Lcom/badlogic/gdx/math/Affine2;->m11:F

    const/4 v2, 0x5

    aput v1, v0, v2

    .line 994
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    iget v1, p1, Lcom/badlogic/gdx/math/Affine2;->m02:F

    const/16 v2, 0xc

    aput v1, v0, v2

    .line 995
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    iget p1, p1, Lcom/badlogic/gdx/math/Affine2;->m12:F

    const/16 v1, 0xd

    aput p1, v0, v1

    return-object p0
.end method

.method public setAsAffine(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;
    .locals 3

    .line 1010
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    iget-object p1, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x0

    aget v2, p1, v1

    aput v2, v0, v1

    const/4 v1, 0x1

    .line 1011
    aget v2, p1, v1

    aput v2, v0, v1

    const/4 v1, 0x4

    .line 1012
    aget v2, p1, v1

    aput v2, v0, v1

    const/4 v1, 0x5

    .line 1013
    aget v2, p1, v1

    aput v2, v0, v1

    const/16 v1, 0xc

    .line 1014
    aget v2, p1, v1

    aput v2, v0, v1

    const/16 v1, 0xd

    .line 1015
    aget p1, p1, v1

    aput p1, v0, v1

    return-object p0
.end method

.method public setFromEulerAngles(FFF)Lcom/badlogic/gdx/math/Matrix4;
    .locals 1

    .line 764
    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->quat:Lcom/badlogic/gdx/math/Quaternion;

    invoke-virtual {v0, p1, p2, p3}, Lcom/badlogic/gdx/math/Quaternion;->setEulerAngles(FFF)Lcom/badlogic/gdx/math/Quaternion;

    .line 765
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Quaternion;)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object p1

    return-object p1
.end method

.method public setFromEulerAnglesRad(FFF)Lcom/badlogic/gdx/math/Matrix4;
    .locals 1

    .line 774
    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->quat:Lcom/badlogic/gdx/math/Quaternion;

    invoke-virtual {v0, p1, p2, p3}, Lcom/badlogic/gdx/math/Quaternion;->setEulerAnglesRad(FFF)Lcom/badlogic/gdx/math/Quaternion;

    .line 775
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Quaternion;)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object p1

    return-object p1
.end method

.method public setToLookAt(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Matrix4;
    .locals 4

    .line 809
    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->l_vez:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    .line 810
    sget-object v1, Lcom/badlogic/gdx/math/Matrix4;->l_vex:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/math/Vector3;->crs(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    .line 811
    sget-object p1, Lcom/badlogic/gdx/math/Matrix4;->l_vey:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/math/Vector3;->crs(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p2

    invoke-virtual {p2}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    .line 812
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Matrix4;->idt()Lcom/badlogic/gdx/math/Matrix4;

    .line 813
    iget-object p2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    iget v2, v1, Lcom/badlogic/gdx/math/Vector3;->x:F

    const/4 v3, 0x0

    aput v2, p2, v3

    .line 814
    iget-object p2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    iget v2, v1, Lcom/badlogic/gdx/math/Vector3;->y:F

    const/4 v3, 0x4

    aput v2, p2, v3

    .line 815
    iget-object p2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    iget v1, v1, Lcom/badlogic/gdx/math/Vector3;->z:F

    const/16 v2, 0x8

    aput v1, p2, v2

    .line 816
    iget-object p2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    const/4 v2, 0x1

    aput v1, p2, v2

    .line 817
    iget-object p2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    const/4 v2, 0x5

    aput v1, p2, v2

    .line 818
    iget-object p2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    iget p1, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    const/16 v1, 0x9

    aput p1, p2, v1

    .line 819
    iget-object p1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    iget p2, v0, Lcom/badlogic/gdx/math/Vector3;->x:F

    neg-float p2, p2

    const/4 v1, 0x2

    aput p2, p1, v1

    .line 820
    iget-object p1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    iget p2, v0, Lcom/badlogic/gdx/math/Vector3;->y:F

    neg-float p2, p2

    const/4 v1, 0x6

    aput p2, p1, v1

    .line 821
    iget-object p1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    iget p2, v0, Lcom/badlogic/gdx/math/Vector3;->z:F

    neg-float p2, p2

    const/16 v0, 0xa

    aput p2, p1, v0

    return-object p0
.end method

.method public setToLookAt(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Matrix4;
    .locals 1

    .line 832
    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->tmpVec:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/badlogic/gdx/math/Vector3;->sub(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 833
    invoke-virtual {p0, v0, p3}, Lcom/badlogic/gdx/math/Matrix4;->setToLookAt(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Matrix4;

    .line 834
    sget-object p2, Lcom/badlogic/gdx/math/Matrix4;->tmpMat:Lcom/badlogic/gdx/math/Matrix4;

    iget p3, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    neg-float p3, p3

    iget v0, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    neg-float v0, v0

    iget p1, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    neg-float p1, p1

    invoke-virtual {p2, p3, v0, p1}, Lcom/badlogic/gdx/math/Matrix4;->setToTranslation(FFF)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Matrix4;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    return-object p0
.end method

.method public setToOrtho(FFFFFF)Lcom/badlogic/gdx/math/Matrix4;
    .locals 6

    sub-float v0, p2, p1

    const/high16 v1, 0x40000000    # 2.0f

    div-float v2, v1, v0

    sub-float v3, p4, p3

    div-float/2addr v1, v3

    sub-float v4, p6, p5

    const/high16 v5, -0x40000000    # -2.0f

    div-float/2addr v5, v4

    add-float/2addr p2, p1

    neg-float p1, p2

    div-float/2addr p1, v0

    add-float/2addr p4, p3

    neg-float p2, p4

    div-float/2addr p2, v3

    add-float/2addr p6, p5

    neg-float p3, p6

    div-float/2addr p3, v4

    .line 582
    iget-object p4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 p5, 0x0

    aput v2, p4, p5

    const/4 p5, 0x1

    const/4 p6, 0x0

    .line 583
    aput p6, p4, p5

    const/4 p5, 0x2

    .line 584
    aput p6, p4, p5

    const/4 p5, 0x3

    .line 585
    aput p6, p4, p5

    const/4 p5, 0x4

    .line 586
    aput p6, p4, p5

    const/4 p5, 0x5

    .line 587
    aput v1, p4, p5

    const/4 p5, 0x6

    .line 588
    aput p6, p4, p5

    const/4 p5, 0x7

    .line 589
    aput p6, p4, p5

    const/16 p5, 0x8

    .line 590
    aput p6, p4, p5

    const/16 p5, 0x9

    .line 591
    aput p6, p4, p5

    const/16 p5, 0xa

    .line 592
    aput v5, p4, p5

    const/16 p5, 0xb

    .line 593
    aput p6, p4, p5

    const/16 p5, 0xc

    .line 594
    aput p1, p4, p5

    const/16 p1, 0xd

    .line 595
    aput p2, p4, p1

    const/16 p1, 0xe

    .line 596
    aput p3, p4, p1

    const/16 p1, 0xf

    const/high16 p2, 0x3f800000    # 1.0f

    .line 597
    aput p2, p4, p1

    return-object p0
.end method

.method public setToOrtho2D(FFFF)Lcom/badlogic/gdx/math/Matrix4;
    .locals 7

    add-float v2, p1, p3

    add-float v4, p2, p4

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v0, p0

    move v1, p1

    move v3, p2

    .line 546
    invoke-virtual/range {v0 .. v6}, Lcom/badlogic/gdx/math/Matrix4;->setToOrtho(FFFFFF)Lcom/badlogic/gdx/math/Matrix4;

    return-object p0
.end method

.method public setToOrtho2D(FFFFFF)Lcom/badlogic/gdx/math/Matrix4;
    .locals 7

    add-float v2, p1, p3

    add-float v4, p2, p4

    move-object v0, p0

    move v1, p1

    move v3, p2

    move v5, p5

    move v6, p6

    .line 560
    invoke-virtual/range {v0 .. v6}, Lcom/badlogic/gdx/math/Matrix4;->setToOrtho(FFFFFF)Lcom/badlogic/gdx/math/Matrix4;

    return-object p0
.end method

.method public setToProjection(FFFF)Lcom/badlogic/gdx/math/Matrix4;
    .locals 4

    .line 479
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Matrix4;->idt()Lcom/badlogic/gdx/math/Matrix4;

    float-to-double v0, p3

    const-wide v2, 0x3f91df46a2529d39L    # 0.017453292519943295

    .line 480
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    div-double/2addr v2, v0

    double-to-float p3, v2

    add-float v0, p2, p1

    sub-float v1, p1, p2

    div-float/2addr v0, v1

    const/high16 v2, 0x40000000    # 2.0f

    mul-float p2, p2, v2

    mul-float p2, p2, p1

    div-float/2addr p2, v1

    .line 483
    iget-object p1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    div-float p4, p3, p4

    const/4 v1, 0x0

    aput p4, p1, v1

    const/4 p4, 0x1

    const/4 v1, 0x0

    .line 484
    aput v1, p1, p4

    const/4 p4, 0x2

    .line 485
    aput v1, p1, p4

    const/4 p4, 0x3

    .line 486
    aput v1, p1, p4

    const/4 p4, 0x4

    .line 487
    aput v1, p1, p4

    const/4 p4, 0x5

    .line 488
    aput p3, p1, p4

    const/4 p3, 0x6

    .line 489
    aput v1, p1, p3

    const/4 p3, 0x7

    .line 490
    aput v1, p1, p3

    const/16 p3, 0x8

    .line 491
    aput v1, p1, p3

    const/16 p3, 0x9

    .line 492
    aput v1, p1, p3

    const/16 p3, 0xa

    .line 493
    aput v0, p1, p3

    const/16 p3, 0xb

    const/high16 p4, -0x40800000    # -1.0f

    .line 494
    aput p4, p1, p3

    const/16 p3, 0xc

    .line 495
    aput v1, p1, p3

    const/16 p3, 0xd

    .line 496
    aput v1, p1, p3

    const/16 p3, 0xe

    .line 497
    aput p2, p1, p3

    const/16 p2, 0xf

    .line 498
    aput v1, p1, p2

    return-object p0
.end method

.method public setToProjection(FFFFFF)Lcom/badlogic/gdx/math/Matrix4;
    .locals 5

    const/high16 v0, 0x40000000    # 2.0f

    mul-float v1, p5, v0

    sub-float v2, p2, p1

    div-float v3, v1, v2

    sub-float v4, p4, p3

    div-float/2addr v1, v4

    add-float/2addr p2, p1

    div-float/2addr p2, v2

    add-float/2addr p4, p3

    div-float/2addr p4, v4

    add-float p1, p6, p5

    sub-float p3, p5, p6

    div-float/2addr p1, p3

    mul-float p6, p6, v0

    mul-float p6, p6, p5

    div-float/2addr p6, p3

    .line 519
    iget-object p3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 p5, 0x0

    aput v3, p3, p5

    const/4 p5, 0x1

    const/4 v0, 0x0

    .line 520
    aput v0, p3, p5

    const/4 p5, 0x2

    .line 521
    aput v0, p3, p5

    const/4 p5, 0x3

    .line 522
    aput v0, p3, p5

    const/4 p5, 0x4

    .line 523
    aput v0, p3, p5

    const/4 p5, 0x5

    .line 524
    aput v1, p3, p5

    const/4 p5, 0x6

    .line 525
    aput v0, p3, p5

    const/4 p5, 0x7

    .line 526
    aput v0, p3, p5

    const/16 p5, 0x8

    .line 527
    aput p2, p3, p5

    const/16 p2, 0x9

    .line 528
    aput p4, p3, p2

    const/16 p2, 0xa

    .line 529
    aput p1, p3, p2

    const/16 p1, 0xb

    const/high16 p2, -0x40800000    # -1.0f

    .line 530
    aput p2, p3, p1

    const/16 p1, 0xc

    .line 531
    aput v0, p3, p1

    const/16 p1, 0xd

    .line 532
    aput v0, p3, p1

    const/16 p1, 0xe

    .line 533
    aput p6, p3, p1

    const/16 p1, 0xf

    .line 534
    aput v0, p3, p1

    return-object p0
.end method

.method public setToRotation(FFFF)Lcom/badlogic/gdx/math/Matrix4;
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p4, v0

    if-nez v0, :cond_0

    .line 718
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Matrix4;->idt()Lcom/badlogic/gdx/math/Matrix4;

    return-object p0

    .line 721
    :cond_0
    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->quat:Lcom/badlogic/gdx/math/Quaternion;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/math/Quaternion;->setFromAxis(FFFF)Lcom/badlogic/gdx/math/Quaternion;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Quaternion;)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object p1

    return-object p1
.end method

.method public setToRotation(FFFFFF)Lcom/badlogic/gdx/math/Matrix4;
    .locals 7

    .line 755
    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->quat:Lcom/badlogic/gdx/math/Quaternion;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/badlogic/gdx/math/Quaternion;->setFromCross(FFFFFF)Lcom/badlogic/gdx/math/Quaternion;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Quaternion;)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object p1

    return-object p1
.end method

.method public setToRotation(Lcom/badlogic/gdx/math/Vector3;F)Lcom/badlogic/gdx/math/Matrix4;
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-nez v0, :cond_0

    .line 692
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Matrix4;->idt()Lcom/badlogic/gdx/math/Matrix4;

    return-object p0

    .line 695
    :cond_0
    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->quat:Lcom/badlogic/gdx/math/Quaternion;

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/math/Quaternion;->set(Lcom/badlogic/gdx/math/Vector3;F)Lcom/badlogic/gdx/math/Quaternion;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Quaternion;)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object p1

    return-object p1
.end method

.method public setToRotation(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Matrix4;
    .locals 1

    .line 743
    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->quat:Lcom/badlogic/gdx/math/Quaternion;

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/math/Quaternion;->setFromCross(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Quaternion;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Quaternion;)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object p1

    return-object p1
.end method

.method public setToRotationRad(FFFF)Lcom/badlogic/gdx/math/Matrix4;
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p4, v0

    if-nez v0, :cond_0

    .line 732
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Matrix4;->idt()Lcom/badlogic/gdx/math/Matrix4;

    return-object p0

    .line 735
    :cond_0
    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->quat:Lcom/badlogic/gdx/math/Quaternion;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/math/Quaternion;->setFromAxisRad(FFFF)Lcom/badlogic/gdx/math/Quaternion;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Quaternion;)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object p1

    return-object p1
.end method

.method public setToRotationRad(Lcom/badlogic/gdx/math/Vector3;F)Lcom/badlogic/gdx/math/Matrix4;
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-nez v0, :cond_0

    .line 704
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Matrix4;->idt()Lcom/badlogic/gdx/math/Matrix4;

    return-object p0

    .line 707
    :cond_0
    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->quat:Lcom/badlogic/gdx/math/Quaternion;

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/math/Quaternion;->setFromAxisRad(Lcom/badlogic/gdx/math/Vector3;F)Lcom/badlogic/gdx/math/Quaternion;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Quaternion;)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object p1

    return-object p1
.end method

.method public setToScaling(FFF)Lcom/badlogic/gdx/math/Matrix4;
    .locals 2

    .line 795
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Matrix4;->idt()Lcom/badlogic/gdx/math/Matrix4;

    .line 796
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x5

    .line 797
    aput p2, v0, p1

    const/16 p1, 0xa

    .line 798
    aput p3, v0, p1

    return-object p0
.end method

.method public setToScaling(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Matrix4;
    .locals 3

    .line 782
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Matrix4;->idt()Lcom/badlogic/gdx/math/Matrix4;

    .line 783
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 784
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    const/4 v2, 0x5

    aput v1, v0, v2

    .line 785
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    iget p1, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    const/16 v1, 0xa

    aput p1, v0, v1

    return-object p0
.end method

.method public setToTranslation(FFF)Lcom/badlogic/gdx/math/Matrix4;
    .locals 2

    .line 642
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Matrix4;->idt()Lcom/badlogic/gdx/math/Matrix4;

    .line 643
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xc

    aput p1, v0, v1

    const/16 p1, 0xd

    .line 644
    aput p2, v0, p1

    const/16 p1, 0xe

    .line 645
    aput p3, v0, p1

    return-object p0
.end method

.method public setToTranslation(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Matrix4;
    .locals 3

    .line 628
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Matrix4;->idt()Lcom/badlogic/gdx/math/Matrix4;

    .line 629
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    const/16 v2, 0xc

    aput v1, v0, v2

    .line 630
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    const/16 v2, 0xd

    aput v1, v0, v2

    .line 631
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    iget p1, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    const/16 v1, 0xe

    aput p1, v0, v1

    return-object p0
.end method

.method public setToTranslationAndScaling(FFFFFF)Lcom/badlogic/gdx/math/Matrix4;
    .locals 2

    .line 676
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Matrix4;->idt()Lcom/badlogic/gdx/math/Matrix4;

    .line 677
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xc

    aput p1, v0, v1

    const/16 p1, 0xd

    .line 678
    aput p2, v0, p1

    const/16 p1, 0xe

    .line 679
    aput p3, v0, p1

    const/4 p1, 0x0

    .line 680
    aput p4, v0, p1

    const/4 p1, 0x5

    .line 681
    aput p5, v0, p1

    const/16 p1, 0xa

    .line 682
    aput p6, v0, p1

    return-object p0
.end method

.method public setToTranslationAndScaling(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Matrix4;
    .locals 3

    .line 655
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Matrix4;->idt()Lcom/badlogic/gdx/math/Matrix4;

    .line 656
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    const/16 v2, 0xc

    aput v1, v0, v2

    .line 657
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    const/16 v2, 0xd

    aput v1, v0, v2

    .line 658
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    iget p1, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    const/16 v1, 0xe

    aput p1, v0, v1

    .line 659
    iget-object p1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    iget v0, p2, Lcom/badlogic/gdx/math/Vector3;->x:F

    const/4 v1, 0x0

    aput v0, p1, v1

    .line 660
    iget-object p1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    iget v0, p2, Lcom/badlogic/gdx/math/Vector3;->y:F

    const/4 v1, 0x5

    aput v0, p1, v1

    .line 661
    iget-object p1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    iget p2, p2, Lcom/badlogic/gdx/math/Vector3;->z:F

    const/16 v0, 0xa

    aput p2, p1, v0

    return-object p0
.end method

.method public setToWorld(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Matrix4;
    .locals 2

    .line 840
    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->tmpForward:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p2

    invoke-virtual {p2}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    .line 841
    sget-object p2, Lcom/badlogic/gdx/math/Matrix4;->right:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/badlogic/gdx/math/Vector3;->crs(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p3

    invoke-virtual {p3}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    .line 842
    sget-object p3, Lcom/badlogic/gdx/math/Matrix4;->tmpUp:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p3, p2}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/math/Vector3;->crs(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    const/high16 v1, -0x40800000    # -1.0f

    .line 843
    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {p0, p2, p3, v0, p1}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Matrix4;

    return-object p0
.end method

.method public setTranslation(FFF)Lcom/badlogic/gdx/math/Matrix4;
    .locals 2

    .line 617
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xc

    aput p1, v0, v1

    const/16 p1, 0xd

    .line 618
    aput p2, v0, p1

    const/16 p1, 0xe

    .line 619
    aput p3, v0, p1

    return-object p0
.end method

.method public setTranslation(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Matrix4;
    .locals 3

    .line 605
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    const/16 v2, 0xc

    aput v1, v0, v2

    .line 606
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    const/16 v2, 0xd

    aput v1, v0, v2

    .line 607
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    iget p1, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    const/16 v1, 0xe

    aput p1, v0, v1

    return-object p0
.end method

.method public toNormalMatrix()Lcom/badlogic/gdx/math/Matrix4;
    .locals 3

    .line 1103
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xc

    const/4 v2, 0x0

    aput v2, v0, v1

    const/16 v1, 0xd

    .line 1104
    aput v2, v0, v1

    const/16 v1, 0xe

    .line 1105
    aput v2, v0, v1

    .line 1106
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Matrix4;->inv()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Matrix4;->tra()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v3, 0x4

    aget v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0x8

    aget v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0xc

    aget v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "]\n["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v4, 0x1

    aget v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v4, 0x5

    aget v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v4, 0x9

    aget v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v4, 0xd

    aget v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v4, 0x2

    aget v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v4, 0x6

    aget v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v4, 0xa

    aget v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v4, 0xe

    aget v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v3, 0x3

    aget v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v3, 0x7

    aget v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0xb

    aget v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v2, 0xf

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public tra()Lcom/badlogic/gdx/math/Matrix4;
    .locals 15

    .line 342
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x4

    aget v2, v0, v1

    const/16 v3, 0x8

    .line 343
    aget v4, v0, v3

    const/16 v5, 0xc

    .line 344
    aget v6, v0, v5

    const/16 v7, 0x9

    .line 345
    aget v8, v0, v7

    const/16 v9, 0xd

    .line 346
    aget v10, v0, v9

    const/16 v11, 0xe

    .line 347
    aget v12, v0, v11

    const/4 v13, 0x1

    .line 348
    aget v14, v0, v13

    aput v14, v0, v1

    const/4 v1, 0x2

    .line 349
    aget v14, v0, v1

    aput v14, v0, v3

    const/4 v3, 0x3

    .line 350
    aget v14, v0, v3

    aput v14, v0, v5

    .line 351
    aput v2, v0, v13

    const/4 v2, 0x6

    .line 352
    aget v5, v0, v2

    aput v5, v0, v7

    const/4 v5, 0x7

    .line 353
    aget v7, v0, v5

    aput v7, v0, v9

    .line 354
    aput v4, v0, v1

    .line 355
    aput v8, v0, v2

    const/16 v1, 0xb

    .line 356
    aget v2, v0, v1

    aput v2, v0, v11

    .line 357
    aput v6, v0, v3

    .line 358
    aput v10, v0, v5

    .line 359
    aput v12, v0, v1

    return-object p0
.end method

.method public translate(FFF)Lcom/badlogic/gdx/math/Matrix4;
    .locals 5

    .line 1437
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xc

    aget v2, v0, v1

    const/4 v3, 0x0

    aget v3, v0, v3

    mul-float v3, v3, p1

    const/4 v4, 0x4

    aget v4, v0, v4

    mul-float v4, v4, p2

    add-float/2addr v3, v4

    const/16 v4, 0x8

    aget v4, v0, v4

    mul-float v4, v4, p3

    add-float/2addr v3, v4

    add-float/2addr v2, v3

    aput v2, v0, v1

    const/16 v1, 0xd

    .line 1438
    aget v2, v0, v1

    const/4 v3, 0x1

    aget v3, v0, v3

    mul-float v3, v3, p1

    const/4 v4, 0x5

    aget v4, v0, v4

    mul-float v4, v4, p2

    add-float/2addr v3, v4

    const/16 v4, 0x9

    aget v4, v0, v4

    mul-float v4, v4, p3

    add-float/2addr v3, v4

    add-float/2addr v2, v3

    aput v2, v0, v1

    const/16 v1, 0xe

    .line 1439
    aget v2, v0, v1

    const/4 v3, 0x2

    aget v3, v0, v3

    mul-float v3, v3, p1

    const/4 v4, 0x6

    aget v4, v0, v4

    mul-float v4, v4, p2

    add-float/2addr v3, v4

    const/16 v4, 0xa

    aget v4, v0, v4

    mul-float v4, v4, p3

    add-float/2addr v3, v4

    add-float/2addr v2, v3

    aput v2, v0, v1

    const/16 v1, 0xf

    .line 1440
    aget v2, v0, v1

    const/4 v3, 0x3

    aget v3, v0, v3

    mul-float v3, v3, p1

    const/4 p1, 0x7

    aget p1, v0, p1

    mul-float p1, p1, p2

    add-float/2addr v3, p1

    const/16 p1, 0xb

    aget p1, v0, p1

    mul-float p1, p1, p3

    add-float/2addr v3, p1

    add-float/2addr v2, v3

    aput v2, v0, v1

    return-object p0
.end method

.method public translate(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Matrix4;
    .locals 2

    .line 1427
    iget v0, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget p1, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    invoke-virtual {p0, v0, v1, p1}, Lcom/badlogic/gdx/math/Matrix4;->translate(FFF)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object p1

    return-object p1
.end method

.method public trn(FFF)Lcom/badlogic/gdx/math/Matrix4;
    .locals 3

    .line 301
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xc

    aget v2, v0, v1

    add-float/2addr v2, p1

    aput v2, v0, v1

    const/16 p1, 0xd

    .line 302
    aget v1, v0, p1

    add-float/2addr v1, p2

    aput v1, v0, p1

    const/16 p1, 0xe

    .line 303
    aget p2, v0, p1

    add-float/2addr p2, p3

    aput p2, v0, p1

    return-object p0
.end method

.method public trn(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Matrix4;
    .locals 4

    .line 289
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xc

    aget v2, v0, v1

    iget v3, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    add-float/2addr v2, v3

    aput v2, v0, v1

    .line 290
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xd

    aget v2, v0, v1

    iget v3, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    add-float/2addr v2, v3

    aput v2, v0, v1

    .line 291
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xe

    aget v2, v0, v1

    iget p1, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    add-float/2addr v2, p1

    aput v2, v0, v1

    return-object p0
.end method
