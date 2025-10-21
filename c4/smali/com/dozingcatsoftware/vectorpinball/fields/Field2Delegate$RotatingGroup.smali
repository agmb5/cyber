.class Lcom/dozingcatsoftware/vectorpinball/fields/Field2Delegate$RotatingGroup;
.super Ljava/lang/Object;
.source "Field2Delegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dozingcatsoftware/vectorpinball/fields/Field2Delegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RotatingGroup"
.end annotation


# instance fields
.field angleIncrement:D

.field centerX:D

.field centerY:D

.field currentAngle:D

.field elementIDs:[Ljava/lang/String;

.field radius:D

.field rotationSpeed:D

.field startAngle:D


# direct methods
.method constructor <init>([Ljava/lang/String;DDDDD)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field2Delegate$RotatingGroup;->elementIDs:[Ljava/lang/String;

    .line 32
    iput-wide p2, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field2Delegate$RotatingGroup;->centerX:D

    .line 33
    iput-wide p4, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field2Delegate$RotatingGroup;->centerY:D

    .line 34
    iput-wide p6, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field2Delegate$RotatingGroup;->radius:D

    .line 35
    iput-wide p10, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field2Delegate$RotatingGroup;->rotationSpeed:D

    .line 36
    iput-wide p8, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field2Delegate$RotatingGroup;->currentAngle:D

    iput-wide p8, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field2Delegate$RotatingGroup;->startAngle:D

    .line 37
    array-length p1, p1

    int-to-double p1, p1

    const-wide p3, 0x401921fb54442d18L    # 6.283185307179586

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr p3, p1

    iput-wide p3, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field2Delegate$RotatingGroup;->angleIncrement:D

    return-void
.end method

.method static create(Lcom/dozingcatsoftware/vectorpinball/model/Field;[Ljava/lang/String;DDD)Lcom/dozingcatsoftware/vectorpinball/fields/Field2Delegate$RotatingGroup;
    .locals 13

    const/4 v0, 0x0

    .line 46
    aget-object v0, p1, v0

    move-object v1, p0

    invoke-virtual {p0, v0}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->getFieldElementById(Ljava/lang/String;)Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;

    move-result-object v0

    check-cast v0, Lcom/dozingcatsoftware/vectorpinball/elements/BumperElement;

    .line 47
    invoke-virtual {v0}, Lcom/dozingcatsoftware/vectorpinball/elements/BumperElement;->getCenter()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    .line 48
    iget v1, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v1, p2

    iget v3, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    sub-double v3, v3, p4

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v6

    .line 49
    iget v1, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    sub-double v1, v1, p4

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    float-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v3, p2

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v8

    .line 50
    new-instance v12, Lcom/dozingcatsoftware/vectorpinball/fields/Field2Delegate$RotatingGroup;

    move-object v0, v12

    move-object v1, p1

    move-wide v2, p2

    move-wide/from16 v4, p4

    move-wide/from16 v10, p6

    invoke-direct/range {v0 .. v11}, Lcom/dozingcatsoftware/vectorpinball/fields/Field2Delegate$RotatingGroup;-><init>([Ljava/lang/String;DDDDD)V

    return-object v12
.end method


# virtual methods
.method applyRotation(Lcom/dozingcatsoftware/vectorpinball/model/Field;D)V
    .locals 8

    .line 54
    iget-wide v0, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field2Delegate$RotatingGroup;->currentAngle:D

    iget-wide v2, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field2Delegate$RotatingGroup;->rotationSpeed:D

    mul-double p2, p2, v2

    add-double/2addr v0, p2

    iput-wide v0, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field2Delegate$RotatingGroup;->currentAngle:D

    const-wide p2, 0x401921fb54442d18L    # 6.283185307179586

    cmpl-double v2, v0, p2

    if-lez v2, :cond_0

    sub-double/2addr v0, p2

    .line 55
    iput-wide v0, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field2Delegate$RotatingGroup;->currentAngle:D

    .line 56
    :cond_0
    iget-wide v0, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field2Delegate$RotatingGroup;->currentAngle:D

    const-wide/16 v2, 0x0

    cmpg-double v4, v0, v2

    if-gez v4, :cond_1

    add-double/2addr v0, p2

    iput-wide v0, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field2Delegate$RotatingGroup;->currentAngle:D

    :cond_1
    const/4 p2, 0x0

    .line 57
    :goto_0
    iget-object p3, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field2Delegate$RotatingGroup;->elementIDs:[Ljava/lang/String;

    array-length v0, p3

    if-ge p2, v0, :cond_2

    .line 58
    iget-wide v0, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field2Delegate$RotatingGroup;->currentAngle:D

    iget-wide v2, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field2Delegate$RotatingGroup;->angleIncrement:D

    int-to-double v4, p2

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v4

    add-double/2addr v0, v2

    .line 60
    aget-object p3, p3, p2

    invoke-virtual {p1, p3}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->getFieldElementById(Ljava/lang/String;)Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;

    move-result-object p3

    check-cast p3, Lcom/dozingcatsoftware/vectorpinball/elements/BumperElement;

    .line 61
    iget-wide v2, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field2Delegate$RotatingGroup;->centerX:D

    iget-wide v4, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field2Delegate$RotatingGroup;->radius:D

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double v4, v4, v6

    add-double/2addr v2, v4

    .line 62
    iget-wide v4, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field2Delegate$RotatingGroup;->centerY:D

    iget-wide v6, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field2Delegate$RotatingGroup;->radius:D

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    mul-double v6, v6, v0

    add-double/2addr v4, v6

    double-to-float v0, v2

    double-to-float v1, v4

    .line 63
    invoke-virtual {p3, v0, v1}, Lcom/dozingcatsoftware/vectorpinball/elements/BumperElement;->setCenter(FF)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
