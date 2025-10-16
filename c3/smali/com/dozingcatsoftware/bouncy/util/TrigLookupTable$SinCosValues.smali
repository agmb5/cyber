.class public Lcom/dozingcatsoftware/bouncy/util/TrigLookupTable$SinCosValues;
.super Ljava/lang/Object;
.source "TrigLookupTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dozingcatsoftware/bouncy/util/TrigLookupTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SinCosValues"
.end annotation


# instance fields
.field private cosValues:[F

.field private sinValues:[F


# direct methods
.method constructor <init>(I)V
    .locals 6

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-array v0, p1, [F

    iput-object v0, p0, Lcom/dozingcatsoftware/bouncy/util/TrigLookupTable$SinCosValues;->sinValues:[F

    .line 14
    new-array v0, p1, [F

    iput-object v0, p0, Lcom/dozingcatsoftware/bouncy/util/TrigLookupTable$SinCosValues;->cosValues:[F

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 16
    iget-object v1, p0, Lcom/dozingcatsoftware/bouncy/util/TrigLookupTable$SinCosValues;->sinValues:[F

    const-wide v2, 0x401921fb54442d18L    # 6.283185307179586

    int-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v4, v4, v2

    int-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v2, v2

    aput v2, v1, v0

    .line 17
    iget-object v1, p0, Lcom/dozingcatsoftware/bouncy/util/TrigLookupTable$SinCosValues;->cosValues:[F

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float v2, v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public cosAtIndex(I)F
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/dozingcatsoftware/bouncy/util/TrigLookupTable$SinCosValues;->cosValues:[F

    aget p1, v0, p1

    return p1
.end method

.method public sinAtIndex(I)F
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/dozingcatsoftware/bouncy/util/TrigLookupTable$SinCosValues;->sinValues:[F

    aget p1, v0, p1

    return p1
.end method

.method public size()I
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/dozingcatsoftware/bouncy/util/TrigLookupTable$SinCosValues;->sinValues:[F

    array-length v0, v0

    return v0
.end method
