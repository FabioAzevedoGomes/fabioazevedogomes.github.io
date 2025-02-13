package com.example.accidentsRS.pathfind.factory.impl;

import com.example.accidentsRS.dao.MapDao;
import com.example.accidentsRS.dao.PredictorDao;
import com.example.accidentsRS.pathfind.factory.GraphFactory;
import com.example.accidentsRS.pathfind.graph.AbstractGraph;
import com.example.accidentsRS.pathfind.graph.Graph;
import com.example.accidentsRS.pathfind.graph.database.DatabaseGraph;
import com.example.accidentsRS.pathfind.graph.inmemory.ChunkedHashGraph;
import com.example.accidentsRS.pathfind.graph.inmemory.CompleteHashGraph;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.config.AutowireCapableBeanFactory;
import org.springframework.stereotype.Component;

@Component
public class DefaultGraphFactory implements GraphFactory {

    @Autowired
    AutowireCapableBeanFactory beanFactory;

    protected Graph setGraphBeans(final AbstractGraph graph, final String modelName) {
        graph.setMapDao(beanFactory.getBean(MapDao.class));
        graph.setPredictorDao(beanFactory.getBean(PredictorDao.class));
        graph.setModelName(modelName);
        return graph;
    }

    @Override
    public Graph getChunkedGraph(final String modelName) {
        return setGraphBeans(new ChunkedHashGraph(), modelName);
    }

    @Override
    public Graph getCompleteGraph(final String modelName) {
        return setGraphBeans(new CompleteHashGraph(), modelName);
    }

    public Graph getDatabaseGraph(final String modelName) {
        return setGraphBeans(new DatabaseGraph(), modelName);
    }
}
