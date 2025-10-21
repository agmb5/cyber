.class public Lcom/dozingcatsoftware/vectorpinball/elements/FieldElementCollection;
.super Ljava/lang/Object;
.source "FieldElementCollection.java"


# instance fields
.field allElements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;",
            ">;"
        }
    .end annotation
.end field

.field elementsById:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;",
            ">;"
        }
    .end annotation
.end field

.field flipperElements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dozingcatsoftware/vectorpinball/elements/FlipperElement;",
            ">;"
        }
    .end annotation
.end field

.field leftFlipperElements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dozingcatsoftware/vectorpinball/elements/FlipperElement;",
            ">;"
        }
    .end annotation
.end field

.field rightFlipperElements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dozingcatsoftware/vectorpinball/elements/FlipperElement;",
            ">;"
        }
    .end annotation
.end field

.field variables:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/elements/FieldElementCollection;->allElements:Ljava/util/List;

    .line 12
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/elements/FieldElementCollection;->elementsById:Ljava/util/Map;

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/elements/FieldElementCollection;->flipperElements:Ljava/util/List;

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/elements/FieldElementCollection;->leftFlipperElements:Ljava/util/List;

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/elements/FieldElementCollection;->rightFlipperElements:Ljava/util/List;

    .line 18
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/elements/FieldElementCollection;->variables:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public addElement(Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;)V
    .locals 2

    .line 21
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/elements/FieldElementCollection;->allElements:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    invoke-virtual {p1}, Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;->getElementId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 23
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/elements/FieldElementCollection;->elementsById:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;->getElementId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    :cond_0
    instance-of v0, p1, Lcom/dozingcatsoftware/vectorpinball/elements/FlipperElement;

    if-eqz v0, :cond_2

    .line 26
    check-cast p1, Lcom/dozingcatsoftware/vectorpinball/elements/FlipperElement;

    .line 27
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/elements/FieldElementCollection;->flipperElements:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    invoke-virtual {p1}, Lcom/dozingcatsoftware/vectorpinball/elements/FlipperElement;->isLeftFlipper()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/elements/FieldElementCollection;->leftFlipperElements:Ljava/util/List;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/elements/FieldElementCollection;->rightFlipperElements:Ljava/util/List;

    :goto_0
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method public getAllElements()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;",
            ">;"
        }
    .end annotation

    .line 37
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/elements/FieldElementCollection;->allElements:Ljava/util/List;

    return-object v0
.end method

.method public getElementForId(Ljava/lang/String;)Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/elements/FieldElementCollection;->elementsById:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;

    return-object p1
.end method

.method public getFlipperElements()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/dozingcatsoftware/vectorpinball/elements/FlipperElement;",
            ">;"
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/elements/FieldElementCollection;->flipperElements:Ljava/util/List;

    return-object v0
.end method

.method public getLeftFlipperElements()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/dozingcatsoftware/vectorpinball/elements/FlipperElement;",
            ">;"
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/elements/FieldElementCollection;->leftFlipperElements:Ljava/util/List;

    return-object v0
.end method

.method public getRightFlipperElements()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/dozingcatsoftware/vectorpinball/elements/FlipperElement;",
            ">;"
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/elements/FieldElementCollection;->rightFlipperElements:Ljava/util/List;

    return-object v0
.end method

.method public getVariable(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    .line 57
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/elements/FieldElementCollection;->variables:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/elements/FieldElementCollection;->variables:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 58
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Variable not set: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getVariableOrDefault(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/elements/FieldElementCollection;->variables:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p2, p0, Lcom/dozingcatsoftware/vectorpinball/elements/FieldElementCollection;->variables:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    :cond_0
    return-object p2
.end method

.method public setVariable(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/elements/FieldElementCollection;->variables:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
