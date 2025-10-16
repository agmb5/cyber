.class Lcom/dozingcatsoftware/vectorpinball/fields/Stars$Constellation;
.super Ljava/lang/Object;
.source "Stars.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dozingcatsoftware/vectorpinball/fields/Stars;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Constellation"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field angularRadius:D

.field centerDecRadians:D

.field centerRaRadians:D

.field name:Ljava/lang/String;

.field segments:[I

.field segmentsByIndex:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field starIndices:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 88
    const-class v0, Lcom/dozingcatsoftware/vectorpinball/fields/Stars;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Stars$Constellation;->segmentsByIndex:Ljava/util/Map;

    return-void
.end method

.method static varargs withSegments(Lcom/dozingcatsoftware/vectorpinball/fields/Stars$StarCatalog;Ljava/lang/String;[I)Lcom/dozingcatsoftware/vectorpinball/fields/Stars$Constellation;
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 101
    new-instance v2, Lcom/dozingcatsoftware/vectorpinball/fields/Stars$Constellation;

    invoke-direct {v2}, Lcom/dozingcatsoftware/vectorpinball/fields/Stars$Constellation;-><init>()V

    move-object/from16 v3, p1

    .line 102
    iput-object v3, v2, Lcom/dozingcatsoftware/vectorpinball/fields/Stars$Constellation;->name:Ljava/lang/String;

    .line 103
    iput-object v1, v2, Lcom/dozingcatsoftware/vectorpinball/fields/Stars$Constellation;->segments:[I

    .line 105
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 106
    :goto_0
    array-length v6, v1

    if-ge v5, v6, :cond_1

    .line 107
    aget v6, v1, v5

    add-int/lit8 v7, v5, 0x1

    .line 108
    aget v7, v1, v7

    .line 109
    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 110
    iget-object v9, v2, Lcom/dozingcatsoftware/vectorpinball/fields/Stars$Constellation;->segmentsByIndex:Ljava/util/Map;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 111
    iget-object v9, v2, Lcom/dozingcatsoftware/vectorpinball/fields/Stars$Constellation;->segmentsByIndex:Ljava/util/Map;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v9, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    :cond_0
    iget-object v9, v2, Lcom/dozingcatsoftware/vectorpinball/fields/Stars$Constellation;->segmentsByIndex:Ljava/util/Map;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v9, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Set;

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 114
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 115
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x2

    goto :goto_0

    .line 118
    :cond_1
    iget-object v5, v0, Lcom/dozingcatsoftware/vectorpinball/fields/Stars$StarCatalog;->raRadians:[D

    aget v6, v1, v4

    aget-wide v6, v5, v6

    .line 120
    iget-object v5, v0, Lcom/dozingcatsoftware/vectorpinball/fields/Stars$StarCatalog;->decRadians:[D

    aget v1, v1, v4

    aget-wide v4, v5, v1

    .line 124
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-wide v10, v6

    move-wide v12, v10

    const-wide/16 v14, 0x0

    const-wide/16 v16, 0x0

    move-wide v6, v4

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Integer;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v18

    .line 125
    iget-object v8, v0, Lcom/dozingcatsoftware/vectorpinball/fields/Stars$StarCatalog;->raRadians:[D

    move-object/from16 v19, v1

    move-object v9, v2

    aget-wide v1, v8, v18

    .line 126
    iget-object v8, v0, Lcom/dozingcatsoftware/vectorpinball/fields/Stars$StarCatalog;->decRadians:[D

    move-wide/from16 v20, v6

    aget-wide v6, v8, v18

    add-double/2addr v14, v1

    add-double v16, v16, v6

    .line 129
    invoke-static {v10, v11, v1, v2}, Ljava/lang/Math;->min(DD)D

    move-result-wide v10

    .line 130
    invoke-static {v12, v13, v1, v2}, Ljava/lang/Math;->max(DD)D

    move-result-wide v12

    .line 131
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    move-wide/from16 v1, v20

    .line 132
    invoke-static {v1, v2, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    move-object v2, v9

    move-object/from16 v1, v19

    goto :goto_1

    :cond_2
    move-object v9, v2

    .line 134
    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v1

    int-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v14, v1

    .line 135
    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v1

    int-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    div-double v1, v16, v1

    .line 137
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const-wide/16 v5, 0x0

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 138
    iget-object v8, v0, Lcom/dozingcatsoftware/vectorpinball/fields/Stars$StarCatalog;->raRadians:[D

    aget-wide v18, v8, v7

    .line 139
    iget-object v8, v0, Lcom/dozingcatsoftware/vectorpinball/fields/Stars$StarCatalog;->decRadians:[D

    aget-wide v20, v8, v7

    move-wide/from16 v22, v14

    move-wide/from16 v24, v1

    .line 141
    invoke-static/range {v18 .. v25}, Lcom/dozingcatsoftware/vectorpinball/fields/Stars;->greatCircleDistance(DDDD)D

    move-result-wide v7

    .line 142
    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(DD)D

    move-result-wide v5

    goto :goto_2

    .line 144
    :cond_3
    iput-wide v14, v9, Lcom/dozingcatsoftware/vectorpinball/fields/Stars$Constellation;->centerRaRadians:D

    .line 145
    iput-wide v1, v9, Lcom/dozingcatsoftware/vectorpinball/fields/Stars$Constellation;->centerDecRadians:D

    .line 146
    iput-wide v5, v9, Lcom/dozingcatsoftware/vectorpinball/fields/Stars$Constellation;->angularRadius:D

    .line 147
    iput-object v3, v9, Lcom/dozingcatsoftware/vectorpinball/fields/Stars$Constellation;->starIndices:Ljava/util/Set;

    return-object v9
.end method
