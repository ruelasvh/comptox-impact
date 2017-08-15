import React, {PropTypes} from 'react';
import TreeView from './treeview';
import '../styles/treeview.css';

const TreeNode = ({ data }) => {
  return (
    <TreeView className={data.children.length > 0 ? 'notEmpty' : 'empty'} key={data.id} nodeLabel={data.filename} count={data.count.toString()} uniqueCount={data.uniqueCount.toString()} defaultCollapsed={false}>
      {data.children.map((node,index) => <TreeNode data={node} key={index}/>)}
    </TreeView>
  );
};

const TreeChart = ({ data, collapsed }) => {
  return (
    <div>
      FTP Files
      <TreeView nodeLabel={data.name} defaultCollapsed={collapsed} count={data.count} uniqueCount={data.uniqueCount}>
        {data.children.map((node,index) => <TreeNode data={node} key={index}/>)}
      </TreeView>
    </div>
  );
};
export default TreeChart;
