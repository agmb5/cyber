.class public Lcom/dozingcatsoftware/vectorpinball/model/Shape$Circle;
.super Lcom/dozingcatsoftware/vectorpinball/model/Shape;
.source "Shape.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dozingcatsoftware/vectorpinball/model/Shape;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Circle"
.end annotation


# instance fields
.field private cx:D

.field private cy:D

.field private fill:Lcom/dozingcatsoftware/vectorpinball/model/Shape$FillType;

.field private radius:D


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/dozingcatsoftware/vectorpinball/model/Shape;-><init>()V

    return-void
.end method

.method public static create(DDDLcom/dozingcatsoftware/vectorpinball/model/Shape$FillType;IILjava/lang/Integer;)Lcom/dozingcatsoftware/vectorpinball/model/Shape$Circle;
    .locals 1

    .line 58
    new-instance v0, Lcom/dozingcatsoftware/vectorpinball/model/Shape$Circle;

    invoke-direct {v0}, Lcom/dozingcatsoftware/vectorpinball/model/Shape$Circle;-><init>()V

    .line 59
    iput p7, v0, Lcom/dozingcatsoftware/vectorpinball/model/Shape$Circle;->layer:I

    .line 60
    iput p8, v0, Lcom/dozingcatsoftware/vectorpinball/model/Shape$Circle;->color:I

    .line 61
    iput-object p9, v0, Lcom/dozingcatsoftware/vectorpinball/model/Shape$Circle;->inactiveLayerColor:Ljava/lang/Integer;

    .line 62
    iput-object p6, v0, Lcom/dozingcatsoftware/vectorpinball/model/Shape$Circle;->fill:Lcom/dozingcatsoftware/vectorpinball/model/Shape$FillType;

    .line 63
    iput-wide p0, v0, Lcom/dozingcatsoftware/vectorpinball/model/Shape$Circle;->cx:D

    .line 64
    iput-wide p2, v0, Lcom/dozingcatsoftware/vectorpinball/model/Shape$Circle;->cy:D

    .line 65
    iput-wide p4, v0, Lcom/dozingcatsoftware/vectorpinball/model/Shape$Circle;->radius:D

    return-object v0
.end method


# virtual methods
.method public draw(Lcom/dozingcatsoftware/vectorpinball/model/Field;Lcom/dozingcatsoftware/vectorpinball/model/IFieldRenderer;)V
    .locals 4

    .line 70
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/model/Shape$Circle;->fill:Lcom/dozingcatsoftware/vectorpinball/model/Shape$FillType;

    sget-object v1, Lcom/dozingcatsoftware/vectorpinball/model/Shape$FillType;->OUTLINE:Lcom/dozingcatsoftware/vectorpinball/model/Shape$FillType;

    if-ne v0, v1, :cond_0

    .line 71
    iget-wide v0, p0, Lcom/dozingcatsoftware/vectorpinball/model/Shape$Circle;->cx:D

    invoke-static {v0, v1}, Lcom/dozingcatsoftware/vectorpinball/model/Shape$Circle;->f32(D)F

    move-result v0

    iget-wide v1, p0, Lcom/dozingcatsoftware/vectorpinball/model/Shape$Circle;->cy:D

    invoke-static {v1, v2}, Lcom/dozingcatsoftware/vectorpinball/model/Shape$Circle;->f32(D)F

    move-result v1

    iget-wide v2, p0, Lcom/dozingcatsoftware/vectorpinball/model/Shape$Circle;->radius:D

    invoke-static {v2, v3}, Lcom/dozingcatsoftware/vectorpinball/model/Shape$Circle;->f32(D)F

    move-result v2

    invoke-virtual {p0, p1}, Lcom/dozingcatsoftware/vectorpinball/model/Shape$Circle;->colorToDraw(Lcom/dozingcatsoftware/vectorpinball/model/Field;)I

    move-result p1

    invoke-interface {p2, v0, v1, v2, p1}, Lcom/dozingcatsoftware/vectorpinball/model/IFieldRenderer;->frameCircle(FFFI)V

    goto :goto_0

    .line 74
    :cond_0
    iget-wide v0, p0, Lcom/dozingcatsoftware/vectorpinball/model/Shape$Circle;->cx:D

    invoke-static {v0, v1}, Lcom/dozingcatsoftware/vectorpinball/model/Shape$Circle;->f32(D)F

    move-result v0

    iget-wide v1, p0, Lcom/dozingcatsoftware/vectorpinball/model/Shape$Circle;->cy:D

    invoke-static {v1, v2}, Lcom/dozingcatsoftware/vectorpinball/model/Shape$Circle;->f32(D)F

    move-result v1

    iget-wide v2, p0, Lcom/dozingcatsoftware/vectorpinball/model/Shape$Circle;->radius:D

    invoke-static {v2, v3}, Lcom/dozingcatsoftware/vectorpinball/model/Shape$Circle;->f32(D)F

    move-result v2

    invoke-virtual {p0, p1}, Lcom/dozingcatsoftware/vectorpinball/model/Shape$Circle;->colorToDraw(Lcom/dozingcatsoftware/vectorpinball/model/Field;)I

    move-result p1

    invoke-interface {p2, v0, v1, v2, p1}, Lcom/dozingcatsoftware/vectorpinball/model/IFieldRenderer;->fillCircle(FFFI)V

    :goto_0
    return-void
.end method
