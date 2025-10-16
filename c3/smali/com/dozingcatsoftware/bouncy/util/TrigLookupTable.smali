.class public Lcom/dozingcatsoftware/bouncy/util/TrigLookupTable;
.super Ljava/lang/Object;
.source "TrigLookupTable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dozingcatsoftware/bouncy/util/TrigLookupTable$SinCosValues;
    }
.end annotation


# static fields
.field private static final TAU:D = 6.283185307179586


# instance fields
.field private sizes:[I

.field private values:[Lcom/dozingcatsoftware/bouncy/util/TrigLookupTable$SinCosValues;


# direct methods
.method public varargs constructor <init>([I)V
    .locals 4

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-static {p1}, Ljava/util/Arrays;->sort([I)V

    .line 39
    iput-object p1, p0, Lcom/dozingcatsoftware/bouncy/util/TrigLookupTable;->sizes:[I

    .line 40
    array-length v0, p1

    new-array v0, v0, [Lcom/dozingcatsoftware/bouncy/util/TrigLookupTable$SinCosValues;

    iput-object v0, p0, Lcom/dozingcatsoftware/bouncy/util/TrigLookupTable;->values:[Lcom/dozingcatsoftware/bouncy/util/TrigLookupTable$SinCosValues;

    const/4 v0, 0x0

    .line 41
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 42
    iget-object v1, p0, Lcom/dozingcatsoftware/bouncy/util/TrigLookupTable;->values:[Lcom/dozingcatsoftware/bouncy/util/TrigLookupTable$SinCosValues;

    new-instance v2, Lcom/dozingcatsoftware/bouncy/util/TrigLookupTable$SinCosValues;

    aget v3, p1, v0

    invoke-direct {v2, v3}, Lcom/dozingcatsoftware/bouncy/util/TrigLookupTable$SinCosValues;-><init>(I)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public valuesWithSizeAtLeast(I)Lcom/dozingcatsoftware/bouncy/util/TrigLookupTable$SinCosValues;
    .locals 3

    const/4 v0, 0x0

    .line 47
    :goto_0
    iget-object v1, p0, Lcom/dozingcatsoftware/bouncy/util/TrigLookupTable;->sizes:[I

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 48
    aget v1, v1, v0

    if-lt v1, p1, :cond_0

    .line 49
    iget-object p1, p0, Lcom/dozingcatsoftware/bouncy/util/TrigLookupTable;->values:[Lcom/dozingcatsoftware/bouncy/util/TrigLookupTable$SinCosValues;

    aget-object p1, p1, v0

    return-object p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 52
    :cond_1
    iget-object p1, p0, Lcom/dozingcatsoftware/bouncy/util/TrigLookupTable;->values:[Lcom/dozingcatsoftware/bouncy/util/TrigLookupTable$SinCosValues;

    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    aget-object p1, p1, v0

    return-object p1
.end method
