.class final Lj$/time/format/DateTimeFormatterBuilder$FractionPrinterParser;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj$/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;


# instance fields
.field private final decimalPoint:Z

.field private final field:Lj$/time/temporal/TemporalField;

.field private final maxWidth:I

.field private final minWidth:I


# direct methods
.method constructor <init>(Lj$/time/temporal/TemporalField;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lj$/time/temporal/TemporalField;->range()Lj$/time/temporal/ValueRange;

    move-result-object v0

    invoke-virtual {v0}, Lj$/time/temporal/ValueRange;->isFixed()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lj$/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->field:Lj$/time/temporal/TemporalField;

    const/4 p1, 0x0

    iput p1, p0, Lj$/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->minWidth:I

    const/16 p1, 0x9

    iput p1, p0, Lj$/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->maxWidth:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lj$/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->decimalPoint:Z

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Field must have a fixed set of values: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "field"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final format(Lj$/time/format/DateTimePrintContext;Ljava/lang/StringBuilder;)Z
    .locals 7

    iget-object v0, p0, Lj$/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->field:Lj$/time/temporal/TemporalField;

    invoke-virtual {p1, v0}, Lj$/time/format/DateTimePrintContext;->getValue(Lj$/time/temporal/TemporalField;)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Lj$/time/format/DateTimePrintContext;->getDecimalStyle()Lj$/time/format/DecimalStyle;

    move-result-object p1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 1
    iget-object v0, p0, Lj$/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->field:Lj$/time/temporal/TemporalField;

    invoke-interface {v0}, Lj$/time/temporal/TemporalField;->range()Lj$/time/temporal/ValueRange;

    move-result-object v0

    iget-object v4, p0, Lj$/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->field:Lj$/time/temporal/TemporalField;

    invoke-virtual {v0, v2, v3, v4}, Lj$/time/temporal/ValueRange;->checkValidValue(JLj$/time/temporal/TemporalField;)J

    invoke-virtual {v0}, Lj$/time/temporal/ValueRange;->getMinimum()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v4

    invoke-virtual {v0}, Lj$/time/temporal/ValueRange;->getMaximum()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    sget-object v5, Ljava/math/BigDecimal;->ONE:Ljava/math/BigDecimal;

    invoke-virtual {v0, v5}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-static {v2, v3}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v2

    sget-object v3, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    const/16 v4, 0x9

    invoke-virtual {v2, v0, v4, v3}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v0

    sget-object v2, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    invoke-virtual {v0, v2}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v2

    if-nez v2, :cond_1

    sget-object v0, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/math/BigDecimal;->stripTrailingZeros()Ljava/math/BigDecimal;

    move-result-object v0

    .line 2
    :goto_0
    invoke-virtual {v0}, Ljava/math/BigDecimal;->scale()I

    move-result v2

    const/16 v3, 0x2e

    if-nez v2, :cond_3

    iget v0, p0, Lj$/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->minWidth:I

    if-lez v0, :cond_5

    iget-boolean v0, p0, Lj$/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->decimalPoint:Z

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    :goto_1
    iget v0, p0, Lj$/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->minWidth:I

    if-ge v1, v0, :cond_5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v0, 0x30

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Ljava/math/BigDecimal;->scale()I

    move-result v1

    iget v2, p0, Lj$/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->minWidth:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v2, p0, Lj$/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->maxWidth:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    sget-object v2, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    invoke-virtual {v0, v1, v2}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean p1, p0, Lj$/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->decimalPoint:Z

    if-eqz p1, :cond_4

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_4
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    const/4 p1, 0x1

    return p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    iget-boolean v0, p0, Lj$/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->decimalPoint:Z

    if-eqz v0, :cond_0

    const-string v0, ",DecimalPoint"

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    const-string v1, "Fraction("

    .line 1
    invoke-static {v1}, Lj$/util/stream/StreamShape$EnumUnboxingLocalUtility;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2
    iget-object v2, p0, Lj$/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->field:Lj$/time/temporal/TemporalField;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lj$/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->minWidth:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lj$/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->maxWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
