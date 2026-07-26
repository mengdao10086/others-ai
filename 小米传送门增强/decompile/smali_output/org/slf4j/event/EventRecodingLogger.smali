.class public Lorg/slf4j/event/EventRecodingLogger;
.super Ljava/lang/Object;
.source "EventRecodingLogger.java"

# interfaces
.implements Lorg/slf4j/Logger;


# instance fields
.field eventQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lorg/slf4j/event/SubstituteLoggingEvent;",
            ">;"
        }
    .end annotation
.end field

.field logger:Lorg/slf4j/helpers/SubstituteLogger;

.field name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/slf4j/helpers/SubstituteLogger;Ljava/util/Queue;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/slf4j/helpers/SubstituteLogger;",
            "Ljava/util/Queue<",
            "Lorg/slf4j/event/SubstituteLoggingEvent;",
            ">;)V"
        }
    .end annotation

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lorg/slf4j/event/EventRecodingLogger;->logger:Lorg/slf4j/helpers/SubstituteLogger;

    .line 17
    invoke-virtual {p1}, Lorg/slf4j/helpers/SubstituteLogger;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/slf4j/event/EventRecodingLogger;->name:Ljava/lang/String;

    .line 18
    iput-object p2, p0, Lorg/slf4j/event/EventRecodingLogger;->eventQueue:Ljava/util/Queue;

    return-void
.end method

.method private recordEvent(Lorg/slf4j/event/Level;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 11

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 26
    invoke-direct/range {v0 .. v5}, Lorg/slf4j/event/EventRecodingLogger;->recordEvent(Lorg/slf4j/event/Level;Lorg/slf4j/Marker;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method private recordEvent(Lorg/slf4j/event/Level;Lorg/slf4j/Marker;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 8

    .line 31
    new-instance p2, Lorg/slf4j/event/SubstituteLoggingEvent;

    invoke-direct {p2}, Lorg/slf4j/event/SubstituteLoggingEvent;-><init>()V

    .line 32
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lorg/slf4j/event/SubstituteLoggingEvent;->setTimeStamp(J)V

    .line 33
    invoke-virtual {p2, p1}, Lorg/slf4j/event/SubstituteLoggingEvent;->setLevel(Lorg/slf4j/event/Level;)V

    .line 34
    iget-object p1, p0, Lorg/slf4j/event/EventRecodingLogger;->logger:Lorg/slf4j/helpers/SubstituteLogger;

    invoke-virtual {p2, p1}, Lorg/slf4j/event/SubstituteLoggingEvent;->setLogger(Lorg/slf4j/helpers/SubstituteLogger;)V

    .line 35
    iget-object p1, p0, Lorg/slf4j/event/EventRecodingLogger;->name:Ljava/lang/String;

    invoke-virtual {p2, p1}, Lorg/slf4j/event/SubstituteLoggingEvent;->setLoggerName(Ljava/lang/String;)V

    .line 37
    invoke-virtual {p2, p3}, Lorg/slf4j/event/SubstituteLoggingEvent;->setMessage(Ljava/lang/String;)V

    .line 38
    invoke-virtual {p2, p4}, Lorg/slf4j/event/SubstituteLoggingEvent;->setArgumentArray([Ljava/lang/Object;)V

    .line 39
    invoke-virtual {p2, p5}, Lorg/slf4j/event/SubstituteLoggingEvent;->setThrowable(Ljava/lang/Throwable;)V

    .line 40
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/slf4j/event/SubstituteLoggingEvent;->setThreadName(Ljava/lang/String;)V

    .line 41
    iget-object p1, p0, Lorg/slf4j/event/EventRecodingLogger;->eventQueue:Ljava/util/Queue;

    invoke-interface {p1, p2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/String;)V
    .registers 4

    .line 248
    sget-object v0, Lorg/slf4j/event/Level;->ERROR:Lorg/slf4j/event/Level;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1, v1}, Lorg/slf4j/event/EventRecodingLogger;->recordEvent(Lorg/slf4j/event/Level;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 22
    iget-object v0, p0, Lorg/slf4j/event/EventRecodingLogger;->name:Ljava/lang/String;

    return-object v0
.end method

.method public info(Ljava/lang/String;)V
    .registers 4

    .line 149
    sget-object v0, Lorg/slf4j/event/Level;->INFO:Lorg/slf4j/event/Level;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1, v1}, Lorg/slf4j/event/EventRecodingLogger;->recordEvent(Lorg/slf4j/event/Level;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public info(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5

    .line 153
    sget-object v0, Lorg/slf4j/event/Level;->INFO:Lorg/slf4j/event/Level;

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, p2, v1}, Lorg/slf4j/event/EventRecodingLogger;->recordEvent(Lorg/slf4j/event/Level;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public warn(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5

    .line 202
    sget-object v0, Lorg/slf4j/event/Level;->WARN:Lorg/slf4j/event/Level;

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, p2, v1}, Lorg/slf4j/event/EventRecodingLogger;->recordEvent(Lorg/slf4j/event/Level;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5

    .line 207
    sget-object v0, Lorg/slf4j/event/Level;->WARN:Lorg/slf4j/event/Level;

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    const/4 p3, 0x0

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/slf4j/event/EventRecodingLogger;->recordEvent(Lorg/slf4j/event/Level;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5

    .line 215
    sget-object v0, Lorg/slf4j/event/Level;->WARN:Lorg/slf4j/event/Level;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1, p2}, Lorg/slf4j/event/EventRecodingLogger;->recordEvent(Lorg/slf4j/event/Level;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method
