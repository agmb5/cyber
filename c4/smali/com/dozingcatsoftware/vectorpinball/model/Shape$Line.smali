.class public Lcom/dozingcatsoftware/vectorpinball/model/Shape$Line;
.super Lcom/dozingcatsoftware/vectorpinball/model/Shape;
.source "Shape.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dozingcatsoftware/vectorpinball/model/Shape;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Line"
.end annotation


# instance fields
.field private x1:D

.field private x2:D

.field private y1:D

.field private y2:D


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/dozingcatsoftware/vectorpinball/model/Shape;-><init>()V

    return-void
.end method

.method public static create(DDDDIILjava/lang/Integer;)Lcom/dozingcatsoftware/vectorpinball/model/Shape$Line;
    .locals 1

    .line 33
    new-instance v0, Lcom/dozingcatsoftware/vectorpinball/model/Shape$Line;

    invoke-direct {v0}, Lcom/dozingcatsoftware/vectorpinball/model/Shape$Line;-><init>()V

    .line 34
    iput p8, v0, Lcom/dozingcatsoftware/vectorpinball/model/Shape$Line;->layer:I

    .line 35
    iput p9, v0, Lcom/dozingcatsoftware/vectorpinball/model/Shape$Line;->color:I

    .line 36
    iput-object p10, v0, Lcom/dozingcatsoftware/vectorpinball/model/Shape$Line;->inactiveLayerColor:Ljava/lang/Integer;

    .line 37
    iput-wide p0, v0, Lcom/dozingcatsoftware/vectorpinball/model/Shape$Line;->x1:D

    .line 38
    iput-wide p2, v0, Lcom/dozingcatsoftware/vectorpinball/model/Shape$Line;->y1:D

    .line 39
    iput-wide p4, v0, Lcom/dozingcatsoftware/vectorpinball/model/Shape$Line;->x2:D

    .line 40
    iput-wide p6, v0, Lcom/dozingcatsoftware/vectorpinball/model/Shape$Line;->y2:D

    return-object v0
.end method


# virtual methods
.method public draw(Lcom/dozingcatsoftware/vectorpinball/model/Field;Lcom/dozingcatsoftware/vectorpinball/model/IFieldRenderer;)V
    .locals 8

    .line 45
    iget-wide v0, p0, Lcom/dozingcatsoftware/vectorpinball/model/Shape$Line;->x1:D

    invoke-static {v0, v1}, Lcom/dozingcatsoftware/vectorpinball/model/Shape$Line;->f32(D)F

    move-result v3

    iget-wide v0, p0, Lcom/dozingcatsoftware/vectorpinball/model/Shape$Line;->y1:D

    invoke-static {v0, v1}, Lcom/dozingcatsoftware/vectorpinball/model/Shape$Line;->f32(D)F

    move-result v4

    iget-wide v0, p0, Lcom/dozingcatsoftware/vectorpinball/model/Shape$Line;->x2:D

    invoke-static {v0, v1}, Lcom/dozingcatsoftware/vectorpinball/model/Shape$Line;->f32(D)F

    move-result v5

    iget-wide v0, p0, Lcom/dozingcatsoftware/vectorpinball/model/Shape$Line;->y2:D

    invoke-static {v0, v1}, Lcom/dozingcatsoftware/vectorpinball/model/Shape$Line;->f32(D)F

    move-result v6

    invoke-virtual {p0, p1}, Lcom/dozingcatsoftware/vectorpinball/model/Shape$Line;->colorToDraw(Lcom/dozingcatsoftware/vectorpinball/model/Field;)I

    move-result v7

    move-object v2, p2

    invoke-interface/range {v2 .. v7}, Lcom/dozingcatsoftware/vectorpinball/model/IFieldRenderer;->drawLine(FFFFI)V

    return-void
.end method
