.class Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$Star2DProjection;
.super Ljava/lang/Object;
.source "Field7Delegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Star2DProjection"
.end annotation


# instance fields
.field capacity:I

.field indices:[I

.field magnitude:[D

.field size:I

.field starIndexToProjIndex:[I

.field x:[D

.field y:[D


# direct methods
.method constructor <init>()V
    .locals 2

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 56
    iput v0, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$Star2DProjection;->size:I

    .line 59
    sget-object v0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate;->CATALOG:Lcom/dozingcatsoftware/vectorpinball/fields/Stars$StarCatalog;

    invoke-virtual {v0}, Lcom/dozingcatsoftware/vectorpinball/fields/Stars$StarCatalog;->size()I

    move-result v0

    iput v0, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$Star2DProjection;->capacity:I

    .line 60
    new-array v1, v0, [D

    iput-object v1, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$Star2DProjection;->x:[D

    .line 61
    new-array v1, v0, [D

    iput-object v1, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$Star2DProjection;->y:[D

    .line 62
    new-array v1, v0, [D

    iput-object v1, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$Star2DProjection;->magnitude:[D

    .line 63
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$Star2DProjection;->indices:[I

    .line 64
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$Star2DProjection;->starIndexToProjIndex:[I

    return-void
.end method


# virtual methods
.method add(DDDI)V
    .locals 2

    .line 76
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$Star2DProjection;->x:[D

    iget v1, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$Star2DProjection;->size:I

    aput-wide p1, v0, v1

    .line 77
    iget-object p1, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$Star2DProjection;->y:[D

    aput-wide p3, p1, v1

    .line 78
    iget-object p1, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$Star2DProjection;->magnitude:[D

    aput-wide p5, p1, v1

    .line 79
    iget-object p1, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$Star2DProjection;->indices:[I

    aput p7, p1, v1

    .line 80
    iget-object p1, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$Star2DProjection;->starIndexToProjIndex:[I

    aput v1, p1, p7

    add-int/lit8 v1, v1, 0x1

    .line 81
    iput v1, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$Star2DProjection;->size:I

    return-void
.end method

.method clear()V
    .locals 2

    const/4 v0, 0x0

    .line 71
    iput v0, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$Star2DProjection;->size:I

    .line 72
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$Star2DProjection;->starIndexToProjIndex:[I

    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    return-void
.end method

.method size()I
    .locals 1

    .line 67
    iget v0, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$Star2DProjection;->size:I

    return v0
.end method
