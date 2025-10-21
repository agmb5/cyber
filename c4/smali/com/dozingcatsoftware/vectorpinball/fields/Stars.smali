.class public Lcom/dozingcatsoftware/vectorpinball/fields/Stars;
.super Ljava/lang/Object;
.source "Stars.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dozingcatsoftware/vectorpinball/fields/Stars$Constellation;,
        Lcom/dozingcatsoftware/vectorpinball/fields/Stars$StarCatalog;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static CATALOG:Lcom/dozingcatsoftware/vectorpinball/fields/Stars$StarCatalog;

.field static CONSTELLATIONS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dozingcatsoftware/vectorpinball/fields/Stars$Constellation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 35
    sget-object v0, Lcom/dozingcatsoftware/vectorpinball/fields/StarData;->STAR_DATA:[D

    invoke-static {v0}, Lcom/dozingcatsoftware/vectorpinball/fields/Stars;->makeCatalog([D)Lcom/dozingcatsoftware/vectorpinball/fields/Stars$StarCatalog;

    move-result-object v0

    sput-object v0, Lcom/dozingcatsoftware/vectorpinball/fields/Stars;->CATALOG:Lcom/dozingcatsoftware/vectorpinball/fields/Stars$StarCatalog;

    const/4 v1, 0x6

    new-array v1, v1, [Lcom/dozingcatsoftware/vectorpinball/fields/Stars$Constellation;

    const/4 v2, 0x0

    const/16 v3, 0x16

    new-array v3, v3, [I

    .line 63
    fill-array-data v3, :array_0

    const-string v4, "Canis Major"

    .line 64
    invoke-static {v0, v4, v3}, Lcom/dozingcatsoftware/vectorpinball/fields/Stars$Constellation;->withSegments(Lcom/dozingcatsoftware/vectorpinball/fields/Stars$StarCatalog;Ljava/lang/String;[I)Lcom/dozingcatsoftware/vectorpinball/fields/Stars$Constellation;

    move-result-object v0

    aput-object v0, v1, v2

    const/4 v0, 0x1

    sget-object v2, Lcom/dozingcatsoftware/vectorpinball/fields/Stars;->CATALOG:Lcom/dozingcatsoftware/vectorpinball/fields/Stars$StarCatalog;

    const/16 v3, 0x1c

    new-array v3, v3, [I

    fill-array-data v3, :array_1

    const-string v4, "Gemini"

    .line 67
    invoke-static {v2, v4, v3}, Lcom/dozingcatsoftware/vectorpinball/fields/Stars$Constellation;->withSegments(Lcom/dozingcatsoftware/vectorpinball/fields/Stars$StarCatalog;Ljava/lang/String;[I)Lcom/dozingcatsoftware/vectorpinball/fields/Stars$Constellation;

    move-result-object v2

    aput-object v2, v1, v0

    const/4 v0, 0x2

    sget-object v2, Lcom/dozingcatsoftware/vectorpinball/fields/Stars;->CATALOG:Lcom/dozingcatsoftware/vectorpinball/fields/Stars$StarCatalog;

    const/16 v3, 0x22

    new-array v3, v3, [I

    fill-array-data v3, :array_2

    const-string v4, "Leo"

    .line 71
    invoke-static {v2, v4, v3}, Lcom/dozingcatsoftware/vectorpinball/fields/Stars$Constellation;->withSegments(Lcom/dozingcatsoftware/vectorpinball/fields/Stars$StarCatalog;Ljava/lang/String;[I)Lcom/dozingcatsoftware/vectorpinball/fields/Stars$Constellation;

    move-result-object v2

    aput-object v2, v1, v0

    const/4 v0, 0x3

    sget-object v2, Lcom/dozingcatsoftware/vectorpinball/fields/Stars;->CATALOG:Lcom/dozingcatsoftware/vectorpinball/fields/Stars$StarCatalog;

    const/16 v3, 0x2a

    new-array v4, v3, [I

    fill-array-data v4, :array_3

    const-string v5, "Orion"

    .line 74
    invoke-static {v2, v5, v4}, Lcom/dozingcatsoftware/vectorpinball/fields/Stars$Constellation;->withSegments(Lcom/dozingcatsoftware/vectorpinball/fields/Stars$StarCatalog;Ljava/lang/String;[I)Lcom/dozingcatsoftware/vectorpinball/fields/Stars$Constellation;

    move-result-object v2

    aput-object v2, v1, v0

    const/4 v0, 0x4

    sget-object v2, Lcom/dozingcatsoftware/vectorpinball/fields/Stars;->CATALOG:Lcom/dozingcatsoftware/vectorpinball/fields/Stars$StarCatalog;

    const/16 v4, 0x1a

    new-array v4, v4, [I

    fill-array-data v4, :array_4

    const-string v5, "Sagittarius"

    .line 78
    invoke-static {v2, v5, v4}, Lcom/dozingcatsoftware/vectorpinball/fields/Stars$Constellation;->withSegments(Lcom/dozingcatsoftware/vectorpinball/fields/Stars$StarCatalog;Ljava/lang/String;[I)Lcom/dozingcatsoftware/vectorpinball/fields/Stars$Constellation;

    move-result-object v2

    aput-object v2, v1, v0

    const/4 v0, 0x5

    sget-object v2, Lcom/dozingcatsoftware/vectorpinball/fields/Stars;->CATALOG:Lcom/dozingcatsoftware/vectorpinball/fields/Stars$StarCatalog;

    new-array v3, v3, [I

    fill-array-data v3, :array_5

    const-string v4, "Ursa Major"

    .line 81
    invoke-static {v2, v4, v3}, Lcom/dozingcatsoftware/vectorpinball/fields/Stars$Constellation;->withSegments(Lcom/dozingcatsoftware/vectorpinball/fields/Stars$StarCatalog;Ljava/lang/String;[I)Lcom/dozingcatsoftware/vectorpinball/fields/Stars$Constellation;

    move-result-object v2

    aput-object v2, v1, v0

    .line 63
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/dozingcatsoftware/vectorpinball/fields/Stars;->CONSTELLATIONS:Ljava/util/List;

    return-void

    :array_0
    .array-data 4
        0x0
        0x311
        0x244
        0x311
        0x236
        0x244
        0x236
        0x311
        0x0
        0x2f
        0x0
        0x25
        0x2f
        0x1ee
        0x1cd
        0x1ee
        0x17
        0x1cd
        0x17
        0x25
        0x25
        0x5a
    .end array-data

    :array_1
    .array-data 4
        0x11
        0x22b
        0x13d
        0x22b
        0x191
        0x22b
        0x191
        0x331
        0x146
        0x331
        0x2d
        0x331
        0x12a
        0x22b
        0x12a
        0x140
        0xf8
        0x140
        0x12a
        0x207
        0x2b
        0x207
        0xbb
        0x331
        0xbb
        0x259
        0x92
        0xbb
    .end array-data

    :array_2
    .array-data 4
        0x16
        0x119
        0x32
        0x119
        0x32
        0x10d
        0x10d
        0x1c6
        0xa7
        0x1c6
        0xa7
        0xa7
        0x119
        0xa7
        0xa7
        0x2e1
        0x2e1
        0x36f
        0x1c6
        0x36f
        0x32
        0x61
        0x3f
        0x61
        0x3f
        0xf1
        0x61
        0xf1
        0xf1
        0x119
        0xf1
        0x204
        0x204
        0x224
    .end array-data

    :array_3
    .array-data 4
        0x5
        0xf7
        0x4a
        0xf7
        0x3a
        0x1f
        0x1d
        0x1f
        0x1d
        0x4a
        0x7
        0x1a
        0x7
        0x1f
        0x7
        0xfd
        0x1a
        0x4a
        0x1a
        0xfd
        0x7
        0x252
        0x252
        0x337
        0x329
        0x337
        0x337
        0x41d
        0x329
        0x41d
        0x1a
        0xd4
        0xd4
        0x15f
        0x15f
        0x16d
        0xd4
        0x300
        0x300
        0x41c
        0x227
        0x41c
    .end array-data

    :array_4
    .array-data 4
        0x35
        0xf0
        0x65
        0xf0
        0x35
        0xcd
        0x65
        0xcd
        0x23
        0x65
        0x23
        0x75
        0x23
        0xa8
        0x75
        0xa8
        0x23
        0xbe
        0xcd
        0x75
        0x86
        0xcd
        0x75
        0x86
        0x86
        0x1b0
    .end array-data

    :array_5
    .array-data 4
        0x24
        0x52
        0x52
        0x56
        0x24
        0xe9
        0x56
        0xe9
        0xe9
        0x21
        0x21
        0x49
        0x26
        0x49
        0x24
        0x15c
        0x52
        0x192
        0x15c
        0x192
        0xf5
        0x15c
        0xf5
        0x192
        0x56
        0x165
        0x11b
        0x165
        0x11b
        0x2e7
        0xb0
        0x165
        0xb0
        0xbc
        0xbc
        0x111
        0xcc
        0x192
        0xcc
        0x13b
        0xc8
        0x13b
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static greatCircleDistance(DDDD)D
    .locals 4

    .line 19
    invoke-static {p2, p3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    invoke-static {p6, p7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double v0, v0, v2

    invoke-static {p2, p3}, Ljava/lang/Math;->cos(D)D

    move-result-wide p2

    invoke-static {p6, p7}, Ljava/lang/Math;->cos(D)D

    move-result-wide p6

    mul-double p2, p2, p6

    sub-double/2addr p0, p4

    invoke-static {p0, p1}, Ljava/lang/Math;->cos(D)D

    move-result-wide p0

    mul-double p2, p2, p0

    add-double/2addr v0, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->acos(D)D

    move-result-wide p0

    return-wide p0
.end method

.method private static makeCatalog([D)Lcom/dozingcatsoftware/vectorpinball/fields/Stars$StarCatalog;
    .locals 13

    .line 38
    new-instance v0, Lcom/dozingcatsoftware/vectorpinball/fields/Stars$StarCatalog;

    invoke-direct {v0}, Lcom/dozingcatsoftware/vectorpinball/fields/Stars$StarCatalog;-><init>()V

    .line 40
    array-length v1, p0

    div-int/lit8 v1, v1, 0x3

    .line 41
    new-array v2, v1, [D

    iput-object v2, v0, Lcom/dozingcatsoftware/vectorpinball/fields/Stars$StarCatalog;->decRadians:[D

    .line 42
    new-array v2, v1, [D

    iput-object v2, v0, Lcom/dozingcatsoftware/vectorpinball/fields/Stars$StarCatalog;->raRadians:[D

    .line 43
    new-array v2, v1, [D

    iput-object v2, v0, Lcom/dozingcatsoftware/vectorpinball/fields/Stars$StarCatalog;->x:[D

    .line 44
    new-array v2, v1, [D

    iput-object v2, v0, Lcom/dozingcatsoftware/vectorpinball/fields/Stars$StarCatalog;->y:[D

    .line 45
    new-array v2, v1, [D

    iput-object v2, v0, Lcom/dozingcatsoftware/vectorpinball/fields/Stars$StarCatalog;->z:[D

    .line 46
    new-array v2, v1, [D

    iput-object v2, v0, Lcom/dozingcatsoftware/vectorpinball/fields/Stars$StarCatalog;->magnitude:[D

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    mul-int/lit8 v3, v2, 0x3

    .line 49
    aget-wide v4, p0, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    add-int/lit8 v6, v3, 0x1

    .line 50
    aget-wide v6, p0, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    .line 51
    iget-object v8, v0, Lcom/dozingcatsoftware/vectorpinball/fields/Stars$StarCatalog;->decRadians:[D

    aput-wide v4, v8, v2

    .line 52
    iget-object v8, v0, Lcom/dozingcatsoftware/vectorpinball/fields/Stars$StarCatalog;->raRadians:[D

    aput-wide v6, v8, v2

    .line 53
    iget-object v8, v0, Lcom/dozingcatsoftware/vectorpinball/fields/Stars$StarCatalog;->x:[D

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    mul-double v9, v9, v11

    aput-wide v9, v8, v2

    .line 54
    iget-object v8, v0, Lcom/dozingcatsoftware/vectorpinball/fields/Stars$StarCatalog;->y:[D

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    neg-double v9, v9

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double v9, v9, v6

    aput-wide v9, v8, v2

    .line 55
    iget-object v6, v0, Lcom/dozingcatsoftware/vectorpinball/fields/Stars$StarCatalog;->z:[D

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    aput-wide v4, v6, v2

    .line 56
    iget-object v4, v0, Lcom/dozingcatsoftware/vectorpinball/fields/Stars$StarCatalog;->magnitude:[D

    add-int/lit8 v3, v3, 0x2

    aget-wide v5, p0, v3

    aput-wide v5, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method
